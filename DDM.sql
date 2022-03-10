-- Author Charlie Moreland
use cem13;
set foreign_key_checks=0;
truncate table ptype;
truncate table expert;
truncate table monitor;
truncate table test_info;
truncate table test;
truncate table plane;
truncate table dependants;
truncate table traffic_control;
truncate table technician;
truncate table manager;
truncate table model;
truncate table employees;
insert into employees (ssn,union_mem_num ,salary ,address,ename,phone_num)
values 
("1",34567,45000,"123 elmo st",'Mark Wahlberg',3789993212),
("2",34568,45000,"123 elmo st",'Kevin Hart',3789993211),
("3",34569,45000,"123 elmo st",'John Apple',3789993210),
("4",34561,45000,"123 elmo st",'Dwayne Johnson',3789993259),
("5",34562,45000,"123 elmo st",'Leo Dicap',3789993258),
("6",34563,45000,"123 elmo st",'Chris Pratt',3789993257),
("7",34564,45000,"123 elmo st",'Ashton Kutcher',3789993256),
("8",34565,45000,"123 elmo st",'Michael Jordan',3789993255),
("9",34566,45000,"123 elmo st",'Lebron James',3789993254),
("10",34510,45000,"123 elmo st",'Kobe Bryant',3789993253),
("11",34511,45000,"123 elmo st",'Giannis ante',3789993252),
("12",34512,45000,"123 elmo st",'Steph Curry',3789993251);

insert into model (model_num,capacity,weight)
values
(999, 100, 33000),
(997, 100, 33000),
(998, 100, 33000),
(996, 100, 33000);

insert into manager (mssn,department)
values 
("1","Traffic"),
("2","Tech"),
("3","Security"),
("4","Hostpitality");

insert into technician (tssn,security_clearance,passport_num)
values 
("5","level 1", "9439239"),
("6","level 5", "9439238"),
("7","level 4", "9439237"),
("8","level 3", "9439236");

insert into traffic_control (tcssn,exam_date)
values 
("9",'1980-12-17'),
("10",'1980-12-17'),
("11",'1980-12-17'),
("12",'1980-12-17');

insert into dependants(dname,relationship ,dob,ssn)
values 
("Michael jr", "Son", '1980-12-17',"8"),
("Steph jr", "Son", '1980-12-17',"12"),
("Lebron jr", "Son", '1980-12-17',"9"),
("Giannis jr", "Son", '1980-12-17',"11");

insert into plane(pname, reg_num)
values
("boeing 474",555 ),
("boeing 473",556 ),
("boeing 472",557 ),
("boeing 471",558 );

insert into test(score, tname, FAA_num)
values
 (20,"stability",333),
 (80,"communication",444),
 (90,"landing",777),
 (50,"speed",555);

truncate table test_info;
insert into test_info(dot, hours, score,reg_num,FAA_num)
values
("2002-12-1",2,20,555,333),
("2002-12-1",2,80,556,444),
("2002-12-1",3,90,557,777),
("2002-12-1",1,50,558,555);

insert into monitor(recent,mssn,reg_num,FAA_num)
values
("2002-12-1","1",555,333),
("2002-12-1","2",556,444),
("2002-12-1","3",557,777),
("2002-12-1","4",558,555);


insert into expert(tssn, model_num)
values 
("5", 999),
("6", 998),
("7", 997),
("8", 996);

insert into ptype(reg_num, model_num)
values
(555,999),
(556,998),
(557,997),
(558,996);

set foreign_key_checks=1;