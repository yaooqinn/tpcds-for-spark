use ${env:TPCDS_DBNAME};

-- use tpcds;

drop table if exists store_carbon;
create table IF NOT EXISTS store_carbon
(
  s_store_sk                bigint,
  s_store_id                string,
  s_rec_start_date          string,
  s_rec_end_date            string,
  s_closed_date_sk          bigint,
  s_store_name              string,
  s_number_employees        int,
  s_floor_space             int,
  s_hours                   string,
  s_manager                 string,
  s_market_id               int,
  s_geography_class         string,
  s_market_desc             string,
  s_market_manager          string,
  s_division_id             int,
  s_division_name           string,
  s_company_id              int,
  s_company_name            string,
  s_street_number           string,
  s_street_name             string,
  s_street_type             string,
  s_suite_number            string,
  s_city                    string,
  s_county                  string,
  s_state                   string,
  s_zip                     string,
  s_country                 string,
  s_gmt_offset              decimal(5,2),
  s_tax_precentage          decimal(5,2)
)
stored by 'carbondata';
insert overwrite table store_carbon select * from et_store;

drop table if exists call_center_Carbon;
create table IF NOT EXISTS call_center_Carbon
(
    cc_call_center_sk         bigint,
    cc_call_center_id         string,
    cc_rec_start_date         string,
    cc_rec_end_date           string,
    cc_closed_date_sk         bigint,
    cc_open_date_sk           bigint,
    cc_name                   string,
    cc_class                  string,
    cc_employees              bigint,
    cc_sq_ft                  bigint,
    cc_hours                  string,
    cc_manager                string,
    cc_mkt_id                 bigint,
    cc_mkt_class              string,
    cc_mkt_desc               string,
    cc_market_manager         string,
    cc_division               bigint,
    cc_division_name          string,
    cc_company                bigint,
    cc_company_name           string,
    cc_street_number          string,
    cc_street_name            string,
    cc_street_type            string,
    cc_suite_number           string,
    cc_city                   string,
    cc_county                 string,
    cc_state                  string,
    cc_zip                    string,
    cc_country                string,
    cc_gmt_offset             decimal(5,2),
    cc_tax_percentage         decimal(5,2)
)
stored by 'carbondata';
insert overwrite table call_center_Carbon select * from et_call_center;


drop table if exists catalog_page_carbon;
create table IF NOT EXISTS catalog_page_carbon
(
    cp_catalog_page_sk        bigint,
    cp_catalog_page_id        string,
    cp_promo_id               bigint,
    cp_start_date_sk          bigint,
    cp_end_date_sk            bigint,
    cp_department             string,
    cp_catalog_number         bigint,
    cp_catalog_page_number    bigint,
    cp_description            string,
    cp_type                   string
)
stored by 'carbondata';
insert overwrite table catalog_page_carbon select * from et_catalog_page;


drop table if exists web_site_carbon;
create table IF NOT EXISTS web_site_carbon 
(
    web_site_sk               bigint,
    web_site_id               string,
    web_rec_start_date        string,
    web_rec_end_date          string,
    web_name                  string,
    web_open_date_sk          bigint,
    web_close_date_sk         bigint,
    web_class                 string,
    web_manager               string,
    web_mkt_id                bigint,
    web_mkt_class             string,
    web_mkt_desc              string,
    web_market_manager        string,
    web_company_id            bigint,
    web_company_name          string,
    web_street_number         string,
    web_street_name           string,
    web_street_type           string,
    web_suite_number          string,
    web_city                  string,
    web_county                string,
    web_state                 string,
    web_zip                   string,
    web_country               string,
    web_gmt_offset            decimal(5,2),
    web_tax_percentage        decimal(5,2)
)
stored by 'carbondata';
insert overwrite table web_site_carbon select * from et_web_site;

drop table if exists web_page_carbon;
create table IF NOT EXISTS web_page_carbon 
(
    wp_web_page_sk            bigint,
    wp_web_page_id            string,
    wp_rec_start_date         string,
    wp_rec_end_date           string,
    wp_creation_date_sk       bigint,
    wp_access_date_sk         bigint,
    wp_autogen_flag           string,
    wp_customer_sk            bigint,
    wp_url                    string,
    wp_type                   string,
    wp_char_count             bigint,
    wp_link_count             bigint,
    wp_image_count            bigint,
    wp_max_ad_count           bigint
)
stored by 'carbondata';
insert overwrite table web_page_carbon select * from et_web_page;


drop table if exists warehouse_carbon;
create table IF NOT EXISTS warehouse_carbon 
(
    w_warehouse_sk            bigint,
    w_warehouse_id            string,
    w_warehouse_name          string,
    w_warehouse_sq_ft         bigint,
    w_street_number           string,
    w_street_name             string,
    w_street_type             string,
    w_suite_number            string,
    w_city                    string,
    w_county                  string,
    w_state                   string,
    w_zip                     string,
    w_country                 string,
    w_gmt_offset              decimal(5,2)
)
stored by 'carbondata';
insert overwrite table warehouse_carbon select * from et_warehouse;

drop table if exists customer_carbon;
create table IF NOT EXISTS customer_carbon 
(
    c_customer_sk             bigint,
    c_customer_id             string,
    c_current_cdemo_sk        bigint,
    c_current_hdemo_sk        bigint,
    c_current_addr_sk         bigint,
    c_first_shipto_date_sk    bigint,
    c_first_sales_date_sk     bigint,
    c_salutation              string,
    c_first_name              string,
    c_last_name               string,
    c_preferred_cust_flag     string,
    c_birth_day               bigint,
    c_birth_month             bigint,
    c_birth_year              bigint,
    c_birth_country           string,
    c_login                   string,
    c_email_address           string,
    c_last_review_date        string
)
stored by 'carbondata';
insert overwrite table customer_carbon select * from et_customer;



drop table if exists customer_address_carbon;
create table IF NOT EXISTS customer_address_carbon
(
    ca_address_sk             bigint,
    ca_address_id             string,
    ca_street_number          string,
    ca_street_name            string,
    ca_street_type            string,
    ca_suite_number           string,
    ca_city                   string,
    ca_county                 string,
    ca_state                  string,
    ca_zip                    string,
    ca_country                string,
    ca_gmt_offset             decimal(5,2),
    ca_location_type          string
)
stored by 'carbondata';
insert overwrite table customer_address_carbon select * from et_customer_address;

drop table if exists customer_demographics_carbon;
create table IF NOT EXISTS customer_demographics_carbon 
(
    cd_demo_sk                bigint,
    cd_gender                 string,
    cd_marital_status         string,
    cd_education_status       string,
    cd_purchase_estimate      bigint,
    cd_credit_rating          string,
    cd_dep_count              bigint,
    cd_dep_employed_count     bigint,
    cd_dep_college_count      bigint
)
stored by 'carbondata';
insert overwrite table customer_demographics_carbon select * from et_customer_demographics;


drop table if exists date_dim_carbon;

create table IF NOT EXISTS date_dim_carbon 
(
    d_date_sk                 bigint,
    d_date_id                 string,
    d_date                    string,
    d_month_seq               bigint,
    d_week_seq                bigint,
    d_quarter_seq             bigint,
    d_year                    bigint,
    d_dow                     bigint,
    d_moy                     bigint,
    d_dom                     bigint,
    d_qoy                     bigint,
    d_fy_year                 bigint,
    d_fy_quarter_seq          bigint,
    d_fy_week_seq             bigint,
    d_day_name                string,
    d_quarter_name            string,
    d_holiday                 string,
    d_weekend                 string,
    d_following_holiday       string,
    d_first_dom               bigint,
    d_last_dom                bigint,
    d_same_day_ly             bigint,
    d_same_day_lq             bigint,
    d_current_day             string,
    d_current_week            string,
    d_current_month           string,
    d_current_quarter         string,
    d_current_year            string
)
stored by 'carbondata';
insert overwrite table date_dim_carbon select * from et_date_dim;


drop table if exists household_demographics_carbon;

create table IF NOT EXISTS household_demographics_carbon 
(
    hd_demo_sk                bigint,
    hd_income_band_sk         bigint,
    hd_buy_potential          string,
    hd_dep_count              bigint,
    hd_vehicle_count          bigint
)
stored by 'carbondata';
insert overwrite table household_demographics_carbon select * from et_household_demographics;

drop table if exists item_carbon;
create table IF NOT EXISTS item_carbon 
(
    i_item_sk                 bigint,
    i_item_id                 string,
    i_rec_start_date          string,
    i_rec_end_date            string,
    i_item_desc               string,
    i_current_price           string,
    i_wholesale_cost          string,
    i_brand_id                bigint,
    i_brand                   string,
    i_class_id                bigint,
    i_class                   string,
    i_category_id             bigint,
    i_category                string,
    i_manufact_id             bigint,
    i_manufact                string,
    i_size                    string,
    i_formulation             string,
    i_color                   string,
    i_units                   string,
    i_container               string,
    i_manager_id              bigint,
    i_product_name            string
)
stored by 'carbondata';
insert overwrite table item_carbon select * from et_item;


drop table if exists time_dim_carbon;
create table IF NOT EXISTS time_dim_carbon 
(
    t_time_sk                 bigint,
    t_time_id                 string,
    t_time                    bigint,
    t_hour                    bigint,
    t_minute                  bigint,
    t_second                  bigint,
    t_am_pm                   string,
    t_shift                   string,
    t_sub_shift               string,
    t_meal_time               string
)
stored by 'carbondata';
insert overwrite table time_dim_carbon select * from et_time_dim;

drop table if exists income_band_carbon;
create table IF NOT EXISTS income_band_carbon 
(
    ib_income_band_sk         bigint,
    ib_lower_bound            bigint,
    ib_upper_bound            bigint
)
stored by 'carbondata';
insert overwrite table income_band_carbon select * from et_income_band;

drop table if exists promotion_carbon;
create table IF NOT EXISTS promotion_carbon 
(
    p_promo_sk                bigint,
    p_promo_id                string,
    p_start_date_sk           bigint,
    p_end_date_sk             bigint,
    p_item_sk                 bigint,
    p_cost                    decimal(15,2),
    p_response_target         bigint,
    p_promo_name              string,
    p_channel_dmail           string,
    p_channel_email           string,
    p_channel_catalog         string,
    p_channel_tv              string,
    p_channel_radio           string,
    p_channel_press           string,
    p_channel_event           string,
    p_channel_demo            string,
    p_channel_details         string,
    p_purpose                 string,
    p_discount_active         string
)
stored by 'carbondata';
insert overwrite table promotion_carbon select * from et_promotion;

drop table if exists reason_carbon;
create table IF NOT EXISTS reason_carbon 
(
    r_reason_sk               bigint,
    r_reason_id               string,
    r_reason_desc             string
)
stored by 'carbondata';
insert overwrite table reason_carbon select * from et_reason;


drop table if exists ship_mode_carbon;
create table IF NOT EXISTS ship_mode_carbon 
(
    sm_ship_mode_sk           bigint,
    sm_ship_mode_id           string,
    sm_type                   string,
    sm_code                   string,
    sm_carrier                string,
    sm_contract               string
)
stored by 'carbondata';
insert overwrite table ship_mode_carbon select * from et_ship_mode;
