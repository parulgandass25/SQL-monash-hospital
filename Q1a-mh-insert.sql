/* FIT9132 2019 S1 Assignment 2 Q1-Part A ANSWERS
   Student Name: Parul
    Student ID: 29507960

   Comments to your marker:
   
*/
 
 --10 patients
 
 insert into patient values (3377,'Daphene','Peppett','4 Fremont Plaza',to_date('21/02/1994','dd/mm/yyyy'),'3214865701');
 insert into patient values (1897,'Doralyn','Weatherdon','80848 Ruskin Place',to_date('06/12/1974','dd/mm/yyyy'),'6921932675');
 insert into patient values (5674,'Dougie','Reilly','66 Traux Way',to_date('11/02/1995','dd/mm/yyyy'),'8399234056');
 insert into patient values (1521,'Tiffi','Domican','1101 Lakewood Way',to_date('07/08/1987','dd/mm/yyyy'),'6068081497');
 insert into patient values (1635,'Natassia','Bleakman','163 Sunfield Centre',to_date('30/10/1990','dd/mm/yyyy'),'1431852298');
 insert into patient values (1307,'Rhea','Davint','8 Mcbride Alley',to_date('13/12/1978','dd/mm/yyyy'),'6987532967');
 insert into patient values (1650,'Misti','Allom','6774 Bobwhit',to_date('21/06/2000','dd/mm/yyyy'),'3206657834');
 insert into patient values (9893,'Fritzi','Robert','423 Bay Trail',to_date('12/02/2001','dd/mm/yyyy'),'4234481758');
 insert into patient values (1873,'Mallan','Meers','4 Hallam Street',to_date('01/09/1998','dd/mm/yyyy'),'4872397654');
 insert into patient values (5678,'Catha','Habard','73 Kirkham Road',to_date('28/07/2005','dd/mm/yyyy'),'4063487643');
 
 --15 admissions
 
insert into admission values (100,to_date('12/01/2019 03:17:42PM','dd/mm/yyyy hh:mi:ssam'),to_date('19/01/2019 12:34:00PM','dd/mm/yyyy hh:mi:ssam'),3377,1005);
insert into admission values (101,to_date('02/02/2019 07:34:05AM','dd/mm/yyyy hh:mi:ssam'),to_date('12/03/2019 12:05:34PM','dd/mm/yyyy hh:mi:ssam'),1897,1012);
insert into admission values (102,to_date('14/02/2019 11:02:23PM','dd/mm/yyyy hh:mi:ssam'),to_date('24/02/2019 02:45:04PM','dd/mm/yyyy hh:mi:ssam'),5674,1018);
insert into admission values (103,to_date('28/02/2019 03:45:56AM','dd/mm/yyyy hh:mi:ssam'),to_date('01/03/2019 04:00:00PM','dd/mm/yyyy hh:mi:ssam'),1521,1027);
insert into admission values (104,to_date('03/03/2019 01:30:46PM','dd/mm/yyyy hh:mi:ssam'),to_date('07/03/2019 02:30:00PM','dd/mm/yyyy hh:mi:ssam'),1635,1028);
insert into admission values (105,to_date('14/03/2019 05:10:39PM','dd/mm/yyyy hh:mi:ssam'),to_date('18/03/2019 04:30:03PM','dd/mm/yyyy hh:mi:ssam'),1307,1033);
insert into admission values (106,to_date('14/03/2019 07:30:39PM','dd/mm/yyyy hh:mi:ssam'),to_date('19/03/2019 03:50:03PM','dd/mm/yyyy hh:mi:ssam'),3377,1069);
insert into admission values (107,to_date('25/03/2019 06:34:39AM','dd/mm/yyyy hh:mi:ssam'),to_date('29/03/2019 01:30:24PM','dd/mm/yyyy hh:mi:ssam'),1650,1048);
insert into admission values (108,to_date('07/04/2019 08:36:46AM','dd/mm/yyyy hh:mi:ssam'),to_date('27/04/2019 09:30:00AM','dd/mm/yyyy hh:mi:ssam'),9893,1056);
insert into admission values (109,to_date('15/04/2019 04:26:36AM','dd/mm/yyyy hh:mi:ssam'),to_date('18/04/2019 05:37:00PM','dd/mm/yyyy hh:mi:ssam'),5678,1060);
insert into admission values (110,to_date('15/04/2019 10:29:00AM','dd/mm/yyyy hh:mi:ssam'),to_date('20/04/2019 12:00:45PM','dd/mm/yyyy hh:mi:ssam'),1873,1061);
insert into admission values (111,to_date('20/04/2019 02:30:45PM','dd/mm/yyyy hh:mi:ssam'),to_date('30/04/2019 03:45:33PM','dd/mm/yyyy hh:mi:ssam'),3377,1012);
insert into admission values (112,to_date('27/04/2019 12:36:57PM','dd/mm/yyyy hh:mi:ssam'),to_date('18/05/2019 08:30:00AM','dd/mm/yyyy hh:mi:ssam'),1897,1028);
insert into admission values (113,to_date('07/05/2019 06:34:40PM','dd/mm/yyyy hh:mi:ssam'),to_date('08/05/2019 07:00:00PM','dd/mm/yyyy hh:mi:ssam'),5674,1056);
insert into admission values (114,to_date('12/05/2019 11:37:45AM','dd/mm/yyyy hh:mi:ssam'),NULL,1521,1033);
insert into admission values (115,to_date('19/05/2019 09:12:34AM','dd/mm/yyyy hh:mi:ssam'),NULL,1635,1027);
insert into admission values (116,to_date('19/05/2019 10:22:00AM','dd/mm/yyyy hh:mi:ssam'),NULL,3377,1028);
insert into admission values (117,to_date('19/05/2019 09:00:34AM','dd/mm/yyyy hh:mi:ssam'),NULL,5674,1012);
insert into admission values (118,to_date('19/05/2019 08:28:40AM','dd/mm/yyyy hh:mi:ssam'),NULL,1897,1027);

--20 admission procedures

insert into adm_prc values (1001,to_date('13/01/2019 12:00:00PM','dd/mm/yyyy hh:mi:ssam'),240,6.90,100,12055,1005,1027);
insert into adm_prc values (1002,to_date('14/01/2019 12:00:00PM','dd/mm/yyyy hh:mi:ssam'),375,63.84,100,43111,1005,1005);
insert into adm_prc values (1003,to_date('03/02/2019 09:00:00AM','dd/mm/yyyy hh:mi:ssam'),70,0,101,15509,7890,NULL);
insert into adm_prc values (1004,to_date('04/02/2019 10:00:00AM','dd/mm/yyyy hh:mi:ssam'),69,0,101,15510,7890,NULL);
insert into adm_prc values (1005,to_date('04/02/2019 02:00:00PM','dd/mm/yyyy hh:mi:ssam'),345,518.68,101,49518,1298,2459);
insert into adm_prc values (1006,to_date('14/02/2019 12:00:00PM','dd/mm/yyyy hh:mi:ssam'),170,0,102,15511,1048,NULL);
insert into adm_prc values (1007,to_date('28/02/2019 11:30:00AM','dd/mm/yyyy hh:mi:ssam'),534,364.66,103,17122,1056,1056);
insert into adm_prc values (1008,to_date('03/03/2019 03:15:00PM','dd/mm/yyyy hh:mi:ssam'),110,0,104,23432,1033,1033);
insert into adm_prc values (1009,to_date('14/03/2019 06:00:00PM','dd/mm/yyyy hh:mi:ssam'),30,124.08,105,40100,1028,1084);
insert into adm_prc values (1010,to_date('14/03/2019 07:00:00PM','dd/mm/yyyy hh:mi:ssam'),35,0,105,40099,1028,1095);
insert into adm_prc values (1011,to_date('25/03/2019 09:00:00AM','dd/mm/yyyy hh:mi:ssam'),90.45,7.96,106,33335,1018,NULL);
insert into adm_prc values (1012,to_date('25/03/2019 11:00:00AM','dd/mm/yyyy hh:mi:ssam'),600,11.94,106,27459,1018,1060);
insert into adm_prc values (1013,to_date('07/04/2019 09:00:00AM','dd/mm/yyyy hh:mi:ssam'),345,215.1,107,43112,1099,1060);
insert into adm_prc values (1014,to_date('15/04/2019 05:00:00PM','dd/mm/yyyy hh:mi:ssam'),45,13.8,108,65554,1061,1061);
insert into adm_prc values (1015,to_date('15/04/2019 05:30:00PM','dd/mm/yyyy hh:mi:ssam'),65,18.55,108,32266,1061,1069);
insert into adm_prc values (1016,to_date('15/04/2019 10:45:00AM','dd/mm/yyyy hh:mi:ssam'),100.66,430.2,109,43114,1005,1060);
insert into adm_prc values (1017,to_date('20/04/2019 03:30:00PM','dd/mm/yyyy hh:mi:ssam'),85.45,0,110,33335,1060,1061);
insert into adm_prc values (1018,to_date('28/04/2019 01:30:00PM','dd/mm/yyyy hh:mi:ssam'),240,0,110,54132,1084,1095);
insert into adm_prc values (1019,to_date('15/04/2019 05:30:00PM','dd/mm/yyyy hh:mi:ssam'),335,322.58,111,49518,2459,7890);
insert into adm_prc values (1020,to_date('08/05/2019 08:30:00AM','dd/mm/yyyy hh:mi:ssam'),75.2,0,112,71432,1056,NULL);

--15 item_treatment

insert into item_treatment values (1001,'NE001',2,6.90);
insert into item_treatment values (1002,'TE001',2,3.44);
insert into item_treatment values (1002,'SS006',4,60.4);
insert into item_treatment values (1005,'KN056',1,123);
insert into item_treatment values (1005,'SS006',2,30.2);
insert into item_treatment values (1005,'BI500',1,365.48);
insert into item_treatment values (1007,'AN002',2,364.66);
insert into item_treatment values (1009,'CF050',2,124.08);
insert into item_treatment values (1011,'CE001',2,7.96);
insert into item_treatment values (1012,'CE001',1,3.98);
insert into item_treatment values (1012,'CE010',2,7.96);
insert into item_treatment values (1013,'LB250',1,215.1);
insert into item_treatment values (1014,'NE001',4,13.8);
insert into item_treatment values (1015,'NE001',1,3.45);
insert into item_treatment values (1015,'SS006',1,15.1);
insert into item_treatment values (1016,'LB250',2,430.2);
insert into item_treatment values (1019,'KN056',1,123);
insert into item_treatment values (1019,'SS006',5,75.5);
insert into item_treatment values (1019,'CF050',2,124.08);

commit;