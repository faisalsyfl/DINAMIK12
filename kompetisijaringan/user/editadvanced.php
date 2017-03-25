<?php

// This file is part of Moodle - http://moodle.org/
//
// Moodle is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Moodle is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Moodle.  If not, see <http://www.gnu.org/licenses/>.

/**
 * Allows you to edit a users profile
 *
 * @copyright 1999 Martin Dougiamas  http://dougiamas.com
 * @license http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 * @package user
 */

require_once('../config.php');
require_once($CFG->libdir.'/gdlib.php');
require_once($CFG->libdir.'/adminlib.php');
require_once($CFG->dirroot.'/user/editadvanced_form.php');
require_once($CFG->dirroot.'/user/editlib.php');
require_once($CFG->dirroot.'/user/profile/lib.php');
require_once($CFG->dirroot.'/user/lib.php');

//HTTPS is required in this page when $CFG->loginhttps enabled
$PAGE->https_required();

$id     = optional_param('id', $USER->id, PARAM_INT);    // user id; -1 if creating new user
$course = optional_param('course', SITEID, PARAM_INT);   // course id (defaults to Site)

$PAGE->set_url('/user/editadvanced.php', array('course'=>$course, 'id'=>$id));

$course = $DB->get_record('course', array('id'=>$course), '*', MUST_EXIST);

if (!empty($USER->newadminuser)) {
    // Ignore double clicks, we must finish all operations before cancelling request.
    ignore_user_abort(true);

    $PAGE->set_course($SITE);
    $PAGE->set_pagelayout('maintenance');
} else {
    if ($course->id == SITEID) {
        require_login();
        $PAGE->set_context(context_system::instance());
    } else {
        require_login($course);
    }
    $PAGE->set_pagelayout('admin');
}

if ($course->id == SITEID) {
    $coursecontext = context_system::instance();   // SYSTEM context
} else {
    $coursecontext = context_course::instance($course->id);   // Course context
}
$systemcontext = context_system::instance();

if ($id == -1) {
    // creating new user
    $user = new stdClass();
    $user->id = -1;
    $user->auth = 'manual';
    $user->confirmed = 1;
    $user->deleted = 0;
    require_capability('moodle/user:create', $systemcontext);
    admin_externalpage_setup('addnewuser', '', array('id' => -1));
} else {
    // editing existing user
    require_capability('moodle/user:update', $systemcontext);
    $user = $DB->get_record('user', array('id'=>$id), '*', MUST_EXIST);
    $PAGE->set_context(context_user::instance($user->id));
    if ($user->id != $USER->id) {
        $PAGE->navigation->extend_for_user($user);
    } else {
        if ($node = $PAGE->navigation->find('myprofile', navigation_node::TYPE_ROOTNODE)) {
            $node->force_open();
        }
    }
}

// remote users cannot be edited
if ($user->id != -1 and is_mnet_remote_user($user)) {
    redirect($CFG->wwwroot . "/user/view.php?id=$id&course={$course->id}");
}

if ($user->id != $USER->id and is_siteadmin($user) and !is_siteadmin($USER)) {  // Only admins may edit other admins
    print_error('useradmineditadmin');
}

if (isguestuser($user->id)) { // the real guest user can not be edited
    print_error('guestnoeditprofileother');
}

if ($user->deleted) {
    echo $OUTPUT->header();
    echo $OUTPUT->heading(get_string('userdeleted'));
    echo $OUTPUT->footer();
    die;
}

//load user preferences
useredit_load_preferences($user);

//Load custom profile fields data
profile_load_data($user);

//User interests
if (!empty($CFG->usetags)) {
    require_once($CFG->dirroot.'/tag/lib.php');
    $user->interests = tag_get_tags_array('user', $id);
}

if ($user->id !== -1) {
    $usercontext = context_user::instance($user->id);
    $editoroptions = array(
        'maxfiles'   => EDITOR_UNLIMITED_FILES,
        'maxbytes'   => $CFG->maxbytes,
        'trusttext'  => false,
        'forcehttps' => false,
        'context'    => $usercontext
    );

    $user = file_prepare_standard_editor($user, 'description', $editoroptions, $usercontext, 'user', 'profile', 0);
} else {
    $usercontext = null;
    // This is a new user, we don't want to add files here
    $editoroptions = array(
        'maxfiles'=>0,
        'maxbytes'=>0,
        'trusttext'=>false,
        'forcehttps'=>false,
        'context' => $coursecontext
    );
}

// Prepare filemanager draft area.
$draftitemid = 0;
$filemanagercontext = $editoroptions['context'];
$filemanageroptions = array('maxbytes'       => $CFG->maxbytes,
                             'subdirs'        => 0,
                             'maxfiles'       => 1,
                             'accepted_types' => 'web_image');
file_prepare_draft_area($draftitemid, $filemanagercontext->id, 'user', 'newicon', 0, $filemanageroptions);
$user->imagefile = $draftitemid;
//create form
$userform = new user_editadvanced_form(null, array(
    'editoroptions' => $editoroptions,
    'filemanageroptions' => $filemanageroptions,
    'userid' => $user->id));
$userform->set_data($user);

if ($usernew = $userform->get_data()) {
    $usercreated = false;

    if (empty($usernew->auth)) {
        //user editing self
        $authplugin = get_auth_plugin($user->auth);
        unset($usernew->auth); //can not change/remove
    } else {
        $authplugin = get_auth_plugin($usernew->auth);
    }

    $usernew->timemodified = time();
    $createpassword = false;

    if ($usernew->id == -1) {
        //TODO check out if it makes sense to create account with this auth plugin and what to do with the password
        unset($usernew->id);
        $createpassword = !empty($usernew->createpassword);
        unset($usernew->createpassword);
        $usernew = file_postupdate_standard_editor($usernew, 'description', $editoroptions, null, 'user', 'profile', null);
        $usernew->mnethostid = $CFG->mnet_localhost_id; // always local user
        $usernew->confirmed  = 1;
        $usernew->timecreated = time();
        if ($createpassword) {
            $usernew->password = '';
        } else {
            $usernew->password = hash_internal_user_password($usernew->newpassword);
        }
        $usernew->id = user_create_user($usernew, false, false);
        $usercreated = true;
    } else {
        $usernew = file_postupdate_standard_editor($usernew, 'description', $editoroptions, $usercontext, 'user', 'profile', 0);
        // Pass a true old $user here.
        if (!$authplugin->user_update($user, $usernew)) {
            // Auth update failed.
            print_error('cannotupdateuseronexauth', '', '', $user->auth);
        }
        user_update_user($usernew, false, false);

        //set new password if specified
        if (!empty($usernew->newpassword)) {
            if ($authplugin->can_change_password()) {
                if (!$authplugin->user_update_password($usernew, $usernew->newpassword)){
                    print_error('cannotupdatepasswordonextauth', '', '', $usernew->auth);
                }
                unset_user_preference('create_password', $usernew); // prevent cron from generating the password
            }
        }

        // force logout if user just suspended
        if (isset($usernew->suspended) and $usernew->suspended and !$user->suspended) {
            \core\session\manager::kill_user_sessions($user->id);
        }
    }

    $usercontext = context_user::instance($usernew->id);

    //update preferences
    useredit_update_user_preference($usernew);

    // update tags
    if (!empty($CFG->usetags) and empty($USER->newadminuser)) {
        useredit_update_interests($usernew, $usernew->interests);
    }

    //update user picture
    if (empty($USER->newadminuser)) {
        useredit_update_picture($usernew, $userform, $filemanageroptions);
    }

    // update mail bounces
    useredit_update_bounces($user, $usernew);

    // update forum track preference
    useredit_update_trackforums($user, $usernew);

    // save custom profile fields data
    profile_save_data($usernew);

    // reload from db
    $usernew = $DB->get_record('user', array('id'=>$usernew->id));

    if ($createpassword) {
        setnew_password_and_mail($usernew);
        unset_user_preference('create_password', $usernew);
        set_user_preference('auth_forcepasswordchange', 1, $usernew);
    }

    // Trigger update/create event, after all fields are stored.
    if ($usercreated) {
        \core\event\user_created::create_from_userid($usernew->id)->trigger();
    } else {
        \core\event\user_updated::create_from_userid($usernew->id)->trigger();
    }

    if ($user->id == $USER->id) {
        // Override old $USER session variable
        foreach ((array)$usernew as $variable => $value) {
            if ($variable === 'description' or $variable === 'password') {
                // These are not set for security nad perf reasons.
                continue;
            }
            $USER->$variable = $value;
        }
        // preload custom fields
        profile_load_custom_fields($USER);

        if (!empty($USER->newadminuser)) {
            unset($USER->newadminuser);
            // Apply defaults again - some of them might depend on admin user info, backup, roles, etc.
            admin_apply_default_settings(null, false);
            // Admin account is fully configured - set flag here in case the redirect does not work.
            unset_config('adminsetuppending');
            // Redirect to admin/ to continue with installation.
            redirect("$CFG->wwwroot/$CFG->admin/");
        } else if (empty($SITE->fullname)) {
            // Somebody double clicked when editing admin user during install.
            redirect("$CFG->wwwroot/$CFG->admin/");
        } else {
            redirect("$CFG->wwwroot/user/view.php?id=$USER->id&course=$course->id");
        }
    } else {
        \core\session\manager::gc(); // Remove stale sessions.
        redirect("$CFG->wwwroot/$CFG->admin/user.php");
    }
    //never reached
}

// make sure we really are on the https page when https login required
$PAGE->verify_https_required();


/// Display page header
if ($user->id == -1 or ($user->id != $USER->id)) {
    if ($user->id == -1) {
        echo $OUTPUT->header();
    } else {
        $PAGE->set_heading($SITE->fullname);
        echo $OUTPUT->header();
        $userfullname = fullname($user, true);
        echo $OUTPUT->heading($userfullname);
    }
} else if (!empty($USER->newadminuser)) {
    $strinstallation = get_string('installation', 'install');
    $strprimaryadminsetup = get_string('primaryadminsetup');

    $PAGE->navbar->add($strprimaryadminsetup);
    $PAGE->set_title($strinstallation);
    $PAGE->set_heading($strinstallation);
    $PAGE->set_cacheable(false);

    echo $OUTPUT->header();
    echo $OUTPUT->box(get_string('configintroadmin', 'admin'), 'generalbox boxwidthnormal boxaligncenter');
    echo '<br />';
} else {
    $streditmyprofile = get_string('editmyprofile');
    $strparticipants  = get_string('participants');
    $strnewuser       = get_string('newuser');
    $userfullname     = fullname($user, true);

    $PAGE->set_title("$course->shortname: $streditmyprofile");
    $PAGE->set_heading($course->fullname);

    echo $OUTPUT->header();
    echo $OUTPUT->heading($userfullname);
}

/// Finally display THE form
$userform->display();

/// and proper footer
echo $OUTPUT->footer();

