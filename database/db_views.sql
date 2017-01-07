/* VIEW COOR ACC */
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
	sct.schteam_coach_name as sct_coach_name,
   pay.payment_status as pay_status,
   sch.school_id as sch_id,
   acc.account_id as acc_id
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
	