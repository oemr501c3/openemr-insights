#dim_referral
create index idx_referral_key 		ON dim_referral (referral_key) using BTREE;
create index idx_client_id 		ON dim_referral (client_id) using BTREE;
create index idx_referred_by 		ON dim_referral (referred_by) using BTREE;
create index idx_referred_to		ON dim_referral (referred_to) using BTREE;
create index idx_external_referral 	ON dim_referral (external_referral) using BTREE;

#fact_client_services
create index idx_client_key 		ON fact_client_services (client_key) using BTREE;
create index idx_facility_key 		ON fact_client_services (facility_key) using BTREE;
create index idx_service_key 		ON fact_client_services (service_key) using BTREE;
create index idx_date_key 			ON fact_client_services (date_key) using BTREE;
create index idx_encounter_id 		ON fact_client_services (encounter_id) using BTREE;
create index idx_other_encounter_id ON fact_client_services (other_encounter_id) using BTREE;
create index idx_referral_key 		ON fact_client_services (referral_key) using BTREE;
create index idx_first_encounter 	ON fact_client_services (first_encounter) using BTREE;
create index idx_code_key 			ON fact_client_services (code_key) using BTREE;

#dim_service
create index idx_service_key 		ON dim_service (service_key) using BTREE;
create index idx_code_id 			ON dim_service (code_id) using BTREE;
create index idx_billing_code 		ON dim_service (billing_code ) using BTREE;
create index idx_code_text 			ON dim_service (code_text) using BTREE;
create index idx_code_type 			ON dim_service (code_type) using BTREE;
create index idx_code_type_key 		ON dim_service (code_type_key) using BTREE;
create index idx_code_type_description ON dim_service (code_type_description) using BTREE;
create index idx_IPPF 				ON dim_service (IPPF(10)) using BTREE;
create index idx_IPPF2 				ON dim_service (IPPF2(20)) using BTREE;
create index idx_IPPFCM 			ON dim_service (IPPFCM(10)) using BTREE;
create index idx_ippf_code 			ON dim_service (ippf_code(20)) using BTREE;
create index idx_family_code 		ON dim_service (family_code(10)) using BTREE;
create index idx_family_desc 		ON dim_service (family_desc(50)) using BTREE;
create index idx_sub_family_code ON dim_service (sub_family_code(10)) using BTREE;
create index idx_sub_family_desc ON dim_service (sub_family_desc(100)) using BTREE;
create index idx_type_code 			ON dim_service (type_code(10)) using BTREE;
create index idx_type_group_desc ON dim_service (type_group_desc(100)) using BTREE;
create index idx_type_desc 			ON dim_service (type_desc(100)) using BTREE;
create index idx_service_detail_code ON dim_service (service_detail_code(10)) using BTREE;
create index idx_complete_desc 		ON dim_service (complete_desc(200)) using BTREE;

#ippf_service_lookup
create index idx_family_code 		ON ippf_service_lookup (family_code(10)) using BTREE;
create index idx_family_desc 		ON ippf_service_lookup (family_desc(50)) using BTREE;
create index idx_sub_family_code 	ON ippf_service_lookup (sub_family_code(10)) using BTREE;
create index idx_sub_family_desc 	ON ippf_service_lookup (sub_family_desc(100)) using BTREE;
create index idx_type_code 			ON ippf_service_lookup (type_code(10)) using BTREE;
create index idx_type_group_desc 	ON ippf_service_lookup (type_group_desc(100)) using BTREE;
create index idx_type_desc 			ON ippf_service_lookup (type_desc(100)) using BTREE;
create index idx_service_detail_code ON ippf_service_lookup (service_detail_code(10)) using BTREE;
create index idx_complete_desc 		ON ippf_service_lookup (complete_desc(200)) using BTREE;
create index idx_service_desc 		ON ippf_service_lookup (service_desc(200)) using BTREE;
create index idx_ippf_code 			ON ippf_service_lookup (ippf_code(10)) using BTREE;

#dim_client
create index idx_client_key 		ON dim_client (client_key) using BTREE;

#dim_facility
create index idx_facility_key 		ON dim_facility (facility_key) using BTREE;
create index idx_facility_name 		ON dim_facility (facility_name) using BTREE;

#dim_date
create index idx_date_key 			ON dim_date (date_key) using BTREE;
create index idx_year 				ON dim_date (year) using BTREE;
create index idx_month 				ON dim_date (month) using BTREE;

#dim_code
create index idx_code_key 			ON dim_code (code_key) using BTREE;
create index idx_code 				ON dim_code (code) using BTREE;
create index idx_code_type 			ON dim_code (code_type) using BTREE;
create index idx_code_text 			ON dim_code (code_text(100)) using BTREE;

#dim_user
create index idx_user_key 			ON dim_user (user_key) using BTREE;
create index idx_first_name 		ON dim_user (first_name(255)) using BTREE;
create index idx_last_name 			ON dim_user (last_name(255)) using BTREE;
create index idx_organization 		ON dim_user (organization(255)) using BTREE;
create index idx_facility_id		ON dim_user (facility_id) using BTREE;

#fact_product_sales
create index idx_client_key 		ON fact_product_sales (client_key) using BTREE;
create index idx_product_key 		ON fact_product_sales (product_key) using BTREE;
create index idx_date_key 		ON fact_product_sales (date_key) using BTREE;
create index idx_user_key 		ON fact_product_sales (user_key) using BTREE;
create index idx_encounter_id 		ON fact_product_sales (encounter_id) using BTREE;
create index idx_sale_id 		ON fact_product_sales (sale_id) using BTREE;
create index idx_inventory_id 		ON fact_product_sales (inventory_id) using BTREE;
create index idx_quantity 		ON fact_product_sales (quantity) using BTREE;
create index idx_fee 		ON fact_product_sales (fee) using BTREE;
create index idx_units 		ON fact_product_sales (units) using BTREE;
create index idx_transaction_type 		ON fact_product_sales (transaction_type) using BTREE;

#dim_product
create index idx_product_key 		ON dim_product (product_key) using BTREE;
create index idx_product_id 		ON dim_product (product_id) using BTREE;
create index idx_product_name 		ON dim_product (product_name) using BTREE;
create index idx_ndc_number 		ON dim_product (ndc_number) using BTREE;
create index idx_reactions 		ON dim_product (reactions) using BTREE;
create index idx_form 		ON dim_product (form) using BTREE;


























