	CREATE OR REPLACE VIEW v_acc_cat AS
SELECT 
	acc.account_id as acc_id,
	cor.coordinator_id as cor_id,
	cat.category_name as cat_name,
	acc.account_username as cor_username,
    cor.coordinator_name as cor_name,
    acc.account_email as cor_email,
	acc.account_category_id as cor_category,
	acc.account_image as cor_image,
	cor.coordinator_event_id as cor_event,
	cor.coordinator_account_id as cor_acc
FROM
	tb_account acc
    JOIN
    tb_coordinator cor
	JOIN
	tb_category cat
    on 
    acc.account_id = cor.coordinator_account_id
	and
	cat.category_id = acc.account_category_id


/*VIEW DAFTAR TIM ACARA*/

CREATE OR REPLACE VIEW v_schteam_dash AS
SELECT 	
	sct.schteam_id as sct_id,
	sct.schteam_name as sct_name,
	eve.event_name as eve_name,
	eve.event_price as eve_price,
	sct.schteam_coach_name as sct_coach_name,
   pay.payment_status as pay_status,
   pay.payment_document as pay_document,
   pay.payment_id as pay_id,
   sch.school_id as sch_id,
   acc.account_id as acc_id,
   pay.payment_unique_code as pay_unique_code,
   eve.event_id as eve_id
FROM
	tb_schteam sct
   JOIN
   tb_school sch
	JOIN
	tb_event eve
	JOIN
	tb_payment pay
	JOIN
	tb_account acc
ON 
   sct.schteam_school_id = sch.school_id
AND
	sct.schteam_event_id = eve.event_id
AND
	sct.schteam_payment_id = pay.payment_id 
AND
	sct.schteam_account_id = acc.account_id	

CREATE OR REPLACE VIEW v_pubteam_dash AS
SELECT 	
	pbt.pubteam_id as pbt_id,
	pbt.pubteam_name as pbt_name,
	pbt.pubteam_instance as pbt_instance,
	pbt.pubteam_email as pbt_email,
	pbt.pubteam_contact as pbt_contact,
	eve.event_name as eve_name,
	eve.event_price as eve_price,
   pay.payment_status as pay_status,
   pay.payment_document as pay_document,
   pay.payment_id as pay_id,
   pay.payment_unique_code as pay_unique_code,
   pub.public_id as pub_id,
   eve.event_id as eve_id

FROM
	tb_pubteam pbt
   JOIN
   tb_public pub
	JOIN
	tb_event eve
	JOIN
	tb_payment pay
ON 
   pbt.pubteam_public_id = pub.public_id
AND
	pbt.pubteam_event_id = eve.event_id
AND
	pbt.pubteam_payment_id = pay.payment_id 
/* ----------------------------------------------------------------------------------------------------------------------- */

CREATE OR REPLACE VIEW v_cor_acc AS
SELECT 
	acc.account_id as acc_id,
	cor.coordinator_id as cor_id,
	cat.category_name as cat_name,
	acc.account_username as cor_username,
    cor.coordinator_name as cor_name,
    acc.account_email as cor_email,
	acc.account_category_id as cor_category,
	acc.account_image as cor_image,
	cor.coordinator_event_id as cor_event,
	eve.event_name as eve_event_name
FROM
	tb_account acc
    JOIN
    tb_coordinator cor
	JOIN
	tb_category cat
	JOIN
	tb_event eve
    on 
    acc.account_id = cor.coordinator_account_id
	and
    eve.event_id = cor.coordinator_event_id
	and
	cat.category_id = acc.account_category_id	
/* -------------------------------------------------------- */
CREATE OR REPLACE VIEW v_sch_acc AS
SELECT 	
	acc.account_id as acc_id,
	acc.account_email as acc_email,
	acc.account_username as acc_username,
	acc.account_log as acc_log,
	acc.account_status as acc_status,
	sch.school_id as sch_id,
	sch.school_name as sch_name,
	sch.school_grade as sch_grade,
	sch.school_web as sch_web,
	sch.school_contact as sch_contact,
	city.city_name as sch_city
FROM
	tb_account acc
   JOIN
   tb_school sch
	JOIN
	tb_city city
ON 
   sch.school_account_id = acc.account_id
AND
	sch.school_city_id = city.city_id
/* ----------------------------------- */
CREATE OR REPLACE VIEW v_pub_acc AS
SELECT 	
	acc.account_id as acc_id,
	acc.account_email as acc_email,
	acc.account_username as acc_username,
	acc.account_log as acc_log,
	acc.account_status as acc_status,
	pub.public_name as pub_name,
	pub.public_address as pub_address,
	pub.public_contact as pub_contact,
	city.city_name as sch_city
FROM
	tb_account acc
JOIN
	tb_public pub
JOIN
	tb_city city
ON 
	pub.public_account_id = acc.account_id
AND
	pub.public_city_id = city.city_id
	
	/* ----------------------------------- */
CREATE OR REPLACE VIEW v_team_acc AS
SELECT 	
	acc.account_id as acc_id,
	acc.account_email as acc_email,
	acc.account_username as acc_username,
	acc.account_log as acc_log,
	acc.account_status as acc_status,
	pub.public_name as pub_name,
	pub.public_address as pub_address,
	pub.public_contact as pub_contact,
	city.city_name as sch_city
FROM
	tb_account acc
JOIN
	tb_public pub
JOIN
	tb_city city
ON 
	pub.public_account_id = acc.account_id
AND
	pub.public_city_id = city.city_id
	

select tb_schparticipant.schparticipant_name as 'Nama Peserta',tb_schteam.schteam_coach_name as 'Nama Pembina', tb_schteam.schteam_name as 'Nama Tim',tb_payment.payment_status as 'Status Bayar', tb_school.school_name as 'Nama Sekolah', tb_city.city_name as 'Kota', tb_account.account_email as 'Email Sekolah', tb_schteam.schteam_coach_contact as 'Kontak Pembina', tb_event.event_name as 'Nama Lomba'
from
tb_account,tb_school,tb_payment,tb_city,tb_schparticipant,tb_event,tb_schteam
where
tb_schteam.schteam_school_id = tb_school.school_id and tb_schteam.schteam_event_id = tb_event.event_id and tb_school.school_city_id = tb_city.city_id and tb_schparticipant.schparticipant_schteam_id = tb_schteam.schteam_id and tb_school.school_account_id = tb_account.account_id and tb_schteam.schteam_payment_id = tb_payment.payment_id