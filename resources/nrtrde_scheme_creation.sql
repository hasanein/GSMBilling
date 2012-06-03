set serveroutput on;
declare
  sql_str varchar2(1000);
begin
  execute immediate 'create tablespace ts_nrtrde_in datafile ''D:\oracle\oradata\hasdb\ts_nrtrde_in_1.dbf'' size 100M';
  for i in 2..10
  loop
      sql_str := 'alter tablespace ts_nrtrde_in add datafile ''D:\oracle\oradata\hasdb\ts_nrtrde_in_'||i||'.dbf'' size 100M';
      execute immediate sql_str;      
  end loop;
      execute immediate 'create user nrtrde_in default tablespace ts_nrtrde_in temporary tablespace temp identified by hashas';
      execute immediate 'grant connect,resource to nrtrde_in';
end;
/
