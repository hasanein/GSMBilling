-- create the table that will contain the raw data loaded directly from the HUR reports
create table nrtrde_in_raw
(
       IMSI varchar2(15),
       event_start_date date,
       event_end_date date,
       sdr_amount number
);

-- create the table that will contain the daily accumulation info
create table nrtrde_in_accu_day
(
       IMSI varchar2(15),
       accu_day date,
       usd_amount number
);

-- create the table that will contain some configurations data in a form of key/values pairs
create table nrtrde_in_config
(
       key varchar2(100),
       value varchar2(100)
);

-- create the table that will contain the subscribers roaming subscription data
create table inf_sub_roaming_info
(
       IMSI varchar2(100),
       MSISDN varchar2(100),
       sub_type varchar2(10),
       pay_type varchar2(20),
       sub_status varchar2(10),
       roam_activation_date date,
       roaming_deactivation_date date,
       wanted_deactivation_date date,
       deposit number,
       credit_limit number,
       total_os number
);
