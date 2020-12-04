/* FIT9132 2019 S1 Assignment 2 Q4 ANSWERS
   Student Name: PARUL
    Student ID: 29507960

   Comments to your marker:
   
*/
/* (i)*/

set serveroutput on;
set echo on;

alter table item add (restock_level number(7));

update item set restock_level = floor(item_stock/2) where item_code in (select item_code from item);

alter table item modify (restock_level not null);

create or replace trigger restock_level
after update on item
for each row
BEGIN
    if :new.item_stock <= :old.restock_level then
    dbms_output.put_line('WARNING, the item needs to be re-ordered!');
    end if;
END;
/

insert into item_treatment values (1002,'NE001',11,738);

/* (ii)*/

CREATE TABLE doctor_team (
    adprc_no           NUMBER(7) NOT NULL,
    assistant_doc_id   NUMBER(4) NOT NULL
);

COMMENT ON COLUMN doctor_team.adprc_no IS
    'Admission procedure identifier (PK)';
    
COMMENT ON COLUMN doctor_team.assistant_doc_id IS
    'Doctor id (PK)';

ALTER TABLE doctor_team ADD CONSTRAINT doctor_team_pk PRIMARY KEY ( adprc_no,assistant_doc_id );

ALTER TABLE doctor_team 
    ADD CONSTRAINT doctor_admpcr_pk FOREIGN KEY ( adprc_no )
    REFERENCES adm_prc ( adprc_no );

ALTER TABLE doctor_team
    ADD CONSTRAINT doctor_assistadmpcr FOREIGN KEY ( assistant_doc_id )
        REFERENCES doctor ( doctor_id );

insert into doctor_team values (1001,1033);

insert into doctor_team values (1001,2459);

select a.adprc_no, perform_dr_id as "Lead Doctor",assistant_doc_id as "Ancillary doctor" 
from doctor_team d join adm_prc a on d.adprc_no =  a.adprc_no;

commit;