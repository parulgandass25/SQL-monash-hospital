/* FIT9132 2019 S1 Assignment 2 Q2 ANSWERS
   Student Name: PARUL
    Student ID: 29507960

   Comments to your marker:
   
*/

/* (i)*/

select doctor_title,
       doctor_fname,
       doctor_lname,
       doctor_phone
from doctor d join doctor_speciality v
on d.doctor_id = v.doctor_id 
join speciality s
on v.spec_code = s.spec_code
where upper(spec_description) = 'ORTHOPEDIC SURGERY'
order by doctor_lname,doctor_fname;

/* (ii)*/

select item_code,
       item_description,
       item_stock,cc_title
from item i join costcentre c on i.cc_code = c.cc_code
where item_stock > 50
and lower(item_description) like '%disposable%'
order by item_code;

/* (iii)*/

select p.patient_id,
       patient_fname||' '||patient_lname as "Patient Name",
       to_char(adm_date_time,'dd/mm/yyyy hh:mi:ssam') as admdatetime,
       doctor_title||' '||doctor_fname||' '||doctor_lname as "Doctor Name"
from patient p join admission a
on p.patient_id = a.patient_id
join doctor d
on a.doctor_id = d.doctor_id
where to_char(adm_date_time,'dd/mm/yyyy') = '14/03/2019'
order by adm_date_time;

/* (iv)*/

select proc_code,
       proc_name,
       proc_description,
       to_char(proc_std_cost,'$99999.99') as proc_std_cost
from procedure
where proc_std_cost < (select avg(proc_std_cost) from procedure)
order by proc_std_cost desc;
 
/* (v)*/

select p.patient_id,
       patient_fname,
       patient_lname,
       to_char(patient_dob,'dd-mm-yyyy') as dob,
       count(a.patient_id) as numberadmission
from patient p join admission a
on p.patient_id = a.patient_id
group by p.patient_id,patient_fname,patient_lname,patient_dob
having count(a.patient_id) > 2
order by numberadmission desc,patient_dob;

/* (vi)*/

select adm_no,
       p.patient_id,
       patient_fname,
       patient_lname,
       to_char(adm_discharge - adm_date_time,'99999')||' days '||round(mod((adm_discharge - adm_date_time)*24,24))||' hrs' as staylength
from patient p join admission a
on p.patient_id = a.patient_id
where adm_discharge is not null
and adm_discharge-adm_date_time > (select avg(adm_discharge-adm_date_time) from admission);

/* (vii)*/

select p.proc_code,
       proc_name,
       proc_description,
       proc_time,
       to_char(proc_std_cost-avg(adprc_pat_cost),'9999.99') as "Price Differential"
from procedure p join adm_prc a 
on p.proc_code = a.proc_code
group by p.proc_code,
         proc_name,
         proc_description,
         proc_time,
         proc_std_cost;

/* (viii)*/

select p.proc_code,
       proc_name,
       NVL(t.item_code,'---') as item_code,
       NVL(item_description,'---') as item_description,
       NVL(to_char(max(it_qty_used)),'---') as max_qty_used
from item_treatment t join item i on t.item_code = i.item_code join adm_prc a on a.adprc_no = t.adprc_no
right outer join procedure p on p.proc_code = a.proc_code
group by p.proc_code,proc_name,t.item_code,item_description
order by proc_name;