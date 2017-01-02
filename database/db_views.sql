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
	