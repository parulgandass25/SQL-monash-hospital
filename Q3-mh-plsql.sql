/* FIT9132 2019 S1 Assignment 2 Q3 ANSWERS
   Student Name:Parul
    Student ID:29507960

   Comments to your marker:
   
*/
set serveroutput on;
set echo on;
/* (i)*/
select * from item_treatment;
select * from item;

create or replace trigger update_item_code
after insert or update of item_code on item
for each row
BEGIN
    update item_treatment
    set item_code =: new.item_code
    where item_code =: old.item_code;
    dbms_output.put_line('item code updated sucessfully!');
END;
/

update item
set item_code='KNR56'
where item_code='KN056';

select * from item_treatment;
select * from item;

/* (ii)*/

create or replace trigger check_name
after insert or update of patient_fname,patient_lname on patient
for each row
BEGIN
    if :new.patient_fname is NULL
    and :new.patient_lname is NULL
    then raise_application_error(-20001,'first name and last name can not be blank');
    end if;
END;
/

insert into patient values (198,null,null,'caufield campus',to_date('21/02/1994','dd/mm/yyyy'),'3456765701');
update patient set patient_fname = null,patient_lname = null where patient_id = '9893';


/* (iii)*/

create or replace trigger update_stock
after insert on item_treatment
for each row
declare
quantity number(3);
code char(10);
BEGIN
    quantity := :new.it_qty_used;
    code := :new.item_code;
    update item
    set item_stock = item_stock-quantity
    where item_code = code;
END;
/

select * from item;

insert into item_treatment values (1017,'LB250',2,430.2);

select * from item;

set serveroutput off;

commit;