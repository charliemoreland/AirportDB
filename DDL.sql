-- Author Charlie Moreland
drop database if exists cem13;
create database cem13;
use cem13;

drop table if exists model;
create table model
(
model_num int,
capacity int,
weight int,
primary key(model_num)
);


drop table if exists employees;
create table employees
(
ssn char(11),
union_mem_num int unique not null,
salary int,
address varchar(50),
ename varchar(50),
phone_num char(10),
primary key(ssn)
);

drop table if exists technician;
create table technician
(
tssn char(11),
security_clearance varchar(15),
passport_num varchar(15),
primary key(tssn),
foreign key(tssn) references employees(ssn) on delete cascade
);

drop table if exists manager;
create table manager
(
mssn char(11),
department varchar(15),
primary key(mssn),
foreign key(mssn) references employees(ssn) on delete cascade
);

drop table if exists traffic_control;
create table traffic_control
(
tcssn char(11),
exam_date date,
primary key(tcssn),
foreign key(tcssn) references employees(ssn) on delete cascade
);

drop table if exists dependants;
create table dependants
(
dname varchar(50),
relationship varchar(20),
dob date,
ssn char(11),
primary key(ssn, dname),
foreign key(ssn)
references employees(ssn) on delete cascade  on update cascade
);


drop table if exists plane;
create table plane
(
pname char(20),
model_num int,
reg_num int not null,
primary key(reg_num),
foreign key(model_num) references model(model_num)
);

drop table if exists test;
create table test
(
 score int,
 tname varchar(20),
FAA_num int,
primary key(FAA_num)
);


drop table if exists test_info;
create table test_info
(
 dot date,
hours int,
score int,
reg_num int,
FAA_num int,
primary key(reg_num, FAA_num),
foreign key(reg_num) references plane(reg_num),
foreign key(FAA_num) references test(FAA_num)
);

drop table if exists monitor;
create table monitor
(
recent date,
mssn char(11),
reg_num int,
FAA_num int,
primary key(mssn,reg_num, FAA_num),
foreign key(reg_num) references test_info(reg_num),
foreign key(FAA_num) references test_info(FAA_num),
foreign key(mssn) references manager(mssn)
);



drop table if exists expert;
create table expert
(
 tssn varchar(11),
 model_num int,
primary key(tssn, model_num),
foreign key(tssn) references technician(tssn),
foreign key(model_num) references model(model_num)
);


drop table if exists ptype;
create table ptype
(
reg_num int,
 model_num int,
primary key(reg_num, model_num),
foreign key(reg_num) references plane(reg_num),
foreign key(model_num) references model(model_num)
);

