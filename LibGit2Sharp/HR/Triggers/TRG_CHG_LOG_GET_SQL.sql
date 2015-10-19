CREATE OR REPLACE trigger hr.trg_chg_log_get_sql 
before insert on hr.departments 
referencing new as new 
for each row begin
  if :new.department_id=2 or ((:new.department_id = 1 or :new.department_id = 3) and :new.department_name='ID') then
    :new.department_name := substr(:new.department_name,1,200);
  end if;
end;
/