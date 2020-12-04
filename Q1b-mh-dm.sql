/* FIT9132 2019 S1 Assignment 2 Q1-Part B ANSWERS
   Student Name: PARUL 
    Student ID:29507960

   Comments to your marker:
   
*/

/* (i)*/
drop sequence pat_seq;
create sequence pat_seq
minvalue 200000
maxvalue 999999
start with 200000
increment by 10;

drop sequence adm_seq;
create sequence adm_seq
minvalue 200000
maxvalue 999999
start with 200000
increment by 10;

drop sequence adprc_seq;
create sequence adprc_seq
minvalue 200000
maxvalue 9999999
start with 200000
increment by 10;

/* (ii)*/

insert into patient 
values (pat_seq.nextval,'Peter','Xiue','14 Narrow Lane Caulfield',to_date('01/10/1981','dd/mm/yyyy'),'0123456789');


insert into admission values (adm_seq.nextval,to_date('16/05/2019 10:00:00AM','dd/mm/yyyy hh:mi:ssam'),NULL,pat_seq.currval,
        (select doctor_id from doctor where lower(doctor_fname)='sawyer' and upper(doctor_lname)='HAISELL'));


/* (iii)*/

update doctor_speciality
set spec_code=(select spec_code from speciality where spec_description='Vascular surgery')
where doctor_id=(select doctor_id from doctor where lower(doctor_fname)='decca' and upper(doctor_lname)='BLANKHORN')
and spec_code=(select spec_code from speciality where spec_description='Thoracic surgery');

/* (iv)*/

delete from doctor_speciality
where spec_code=(select spec_code from speciality where spec_description='Medical genetics');

commit;