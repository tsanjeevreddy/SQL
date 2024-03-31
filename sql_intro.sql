create database sep23_beg;
commit;
create database scaler;
create table sep23_beg.batches (
batch_id int primary key,
batch_name varchar(20) unique not null
);
use scaler;
drop database scaler;
use sep23_beg;
create table sep23_beg.students(
student_id int primary key,
student_f_name varchar(20) not null,
student_l_name varchar(20),
student_email varchar(20) not null,
student_batch_id int,
foreign key (student_batch_id) references sep23_beg.batches(batch_id) 
on delete cascade
on update set null
);
commit;
select * from sep23_beg.batches;
insert into sep23_beg.batches values (6, 'data science');