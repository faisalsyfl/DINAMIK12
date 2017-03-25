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
 * This file is responsible for serving the one huge CSS of each theme.
 *
 * @package   core
 * @copyright 2009 Petr Skoda (skodak)  {@link http://skodak.org}
 * @license   http://www.gnu.org/copyleft/gpl.html GNU GPL v3 or later
 */


// disable moodle specific debug messages and any errors in output,
// comment out when debugging or better look into error log!
define('NO_DEBUG_DISPLAY', true);

// we need just the values from config.php and minlib.php
define('ABORT_AFTER_CONFIG', true);
require('../config.php'); // this stops immediately at the beginning of lib/setup.php
require_once($CFG->dirroot.'/lib/csslib.php');

if (!defined('THEME_DESIGNER_CACHE_LIFETIME')) {
    define('THEME_DESIGNER_CACHE_LIFETIME', 4); // this can be also set in config.php
}

if ($slashargument = min_get_slash_argument()) {
    $slashargument = ltrim($slashargument, '/');
    if (substr_count($slashargument, '/') < 2) {
        css_send_css_not_found();
    }

    if (strpos($slashargument, '_s/') === 0) {
        // Can't use SVG
        $slashargument = substr($slashargument, 3);
        $usesvg = false;
    } else {
        $usesvg = true;
    }

    $chunk = null;
    if (preg_match('#/(chunk(\d+)(/|$))#', $slashargument, $matches)) {
        $chunk = (int)$matches[2];
        $slashargument = str_replace($matches[1], '', $slashargument);
    }

    list($themename, $rev, $type) = explode('/', $slashargument, 3);
    $themename = min_clean_param($themename, 'SAFEDIR');
    $rev       = min_clean_param($rev, 'INT');
    $type      = min_clean_param($type, 'SAFEDIR');

} else {
    $themename = min_optional_param('theme', 'standard', 'SAFEDIR');
    $rev       = min_optional_param('rev', 0, 'INT');
    $type      = min_optional_param('type', 'all', 'SAFEDIR');
    $chunk     = min_optional_param('chunk', null, 'INT');
    $usesvg    = (bool)min_optional_param('svg', '1', 'INT');
}

if ($type === 'editor') {
    // The editor CSS is never chunked.
    $chunk = null;
} else if ($type === 'all') {
    // We're fine.
} else {
    css_send_css_not_found();
}

if (file_exists("$CFG->dirroot/theme/$themename/config.php")) {
    // exists
} else if (!empty($CFG->themedir) and file_exists("$CFG->themedir/$themename/config.php")) {
    // exists
} else {
    header('HTTP/1.0 404 not found');
    die('Theme was not found, sorry.');
}

$candidatedir = "$CFG->localcachedir/theme/$rev/$themename/css";
$etag = "$rev/$themename/$type";
$candidatename = $type;
if (!$usesvg) {
    // Add to the sheet name, one day we'll be able to just drop this.
    $candidatedir .= '/nosvg';
    $etag .= '/nosvg';
}

if ($chunk !== null) {
    $etag .= '/chunk'.$chunk;
    $candidatename .= '.'.$chunk;
}
$candidatesheet = "$candidatedir/$candidatename.css";
$etag = sha1($etag);

if (file_exists($candidatesheet)) {
    if (!empty($_SERVER['HTTP_IF_NONE_MATCH']) || !empty($_SERVER['HTTP_IF_MODIFIED_SINCE'])) {
        // we do not actually need to verify the etag value because our files
        // never change in cache because we increment the rev parameter
        css_send_unmodified(filemtime($candidatesheet), $etag);
    }
    css_send_cached_css($candidatesheet, $etag);
}

//=================================================================================
// ok, now we need to start normal moodle script, we need to load all libs and $DB
define('ABORT_AFTER_CONFIG_CANCEL', true);

define('NO_MOODLE_COOKIES', true); // Session not used here
define('NO_UPGRADE_CHECK', true);  // Ignore upgrade check

require("$CFG->dirroot/lib/setup.php");

$theme = theme_config::load($themename);
$theme->force_svg_use($usesvg);

$themerev = theme_get_revision();

$cache = true;
if ($themerev <= 0 or $themerev != $rev) {
    $rev = $themerev;
    $cache = false;

    $candidatedir = "$CFG->cachedir/theme/$rev/$themename/css";
    $etag = "$rev/$themename/$type";
    $candidatename = $type;
    if (!$usesvg) {
        // Add to the sheet name, one day we'll be able to just drop this.
        $candidatedir .= '/nosvg';
        $etag .= '/nosvg';
    }

    if ($chunk !== null) {
        $etag .= '/chunk'.$chunk;
        $candidatename .= '.'.$chunk;
    }
    $candidatesheet = "$candidatedir/$candidatename.css";
    $etag = sha1($etag);
}

make_localcache_directory('theme', false);

if ($type === 'editor') {
    $cssfiles = $theme->editor_css_files();
    css_store_css($theme, "$candidatedir/editor.css", $cssfiles, false);

} else {
    // Older IEs require smaller chunks.
    $css = $theme->css_files();
    $relroot = preg_replace('|^http.?://[^/]+|', '', $CFG->wwwroot);
    if (!empty($slashargument)) {
        if ($usesvg) {
            $chunkurl = "{$relroot}/theme/styles.php/{$themename}/{$rev}/all";
        } else {
            $chunkurl = "{$relroot}/theme/styles.php/_s/{$themename}/{$rev}/all";
        }
    } else {
        if ($usesvg) {
            $chunkurl = "{$relroot}/theme/styles.php?theme={$themename}&rev={$rev}&type=all";
        } else {
            $chunkurl = "{$relroot}/theme/styles.php?theme={$themename}&rev={$rev}&type=all&svg=0";
        }
    }
    $cssfiles = array();
    foreach ($css as $key => $value) {
        foreach ($value as $val) {
            if (is_array($val)) {
                foreach ($val as $k=>$v) {
                    $cssfiles[] = $v;
                }
            } else {
                $cssfiles[] = $val;
            }
        }
    }
    css_store_css($theme, "$candidatedir/all.css", $cssfiles, true, $chunkurl);
}

// verify nothing failed in cache file creation
clearstatcache();
if (!file_exists($candidatesheet)) {
    // We need to send at least something, IE does not get it chunked properly but who cares.
    $css = '';
    foreach ($cssfiles as $file) {
        $css .= file_get_contents($file)."\n";
    }
    css_send_uncached_css($css, false);

} else if (!$cache) {
    // Do not pollute browser caches if invalid revision requested.
    css_send_uncached_css(file_get_contents($candidatesheet), false);

} else {
    // This is the expected result!
    css_send_cached_css($candidatesheet, $etag);
}
