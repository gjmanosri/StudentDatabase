create database student;

use student;
create table student_details(id int,
studentname varchar(20),
studentrollno varchar(7),
age int,studentmobile int,primary key(id));

insert into student_details(id,studentname,studentrollno,age,studentmobile)
values(101,"Manosri","cs01",20,99999),
(102,"Brindha","cs02",20,88888),
(103,"Sowmdharya","cs03",20,77777),
(104,"Lalitha","cs04",20,98765);

use student;
create table course_details(id int ,courseid int,
coursename varchar(20),
primary key(id),
foreign key(courseid) references student_details(id));

insert into course_details(id,courseid,coursename)
values(1,101,"cse"),
(2,102,"ece"),
(3,103,"eee"),
(4,104,"agri");

use student;
create table lecture_details(id int,
lecturename varchar(20),lec_courseid int,
lectureno int,primary key(id),foreign key(lec_courseid) references course_details(id));

insert into lecture_details(id,lecturename,lec_courseid,lectureno)values(1001,"riya",1,90909),
(1002,"nivi",2,98989),
(1003,"susi",3,80808),
(1004,"priya",4,70707);

use student;
create table semester_details( semid int,semname varchar(5),cid int,lid int,sid int,primary key(semid),foreign key(cid) references course_details(id),
foreign key(lid) references lecture_details(id),foreign key(sid) references student_details(id));

 insert into semester_details(semid,semname,cid,lid,sid)
 values(001,"one",1,1001,101),
 (002,"two",2,1002,102),
 (003,"three",3,1003,103),
 (004,"four",4,1004,104);
 
 use student;
 create table grade_details(gid int,sid int,cid int,percent int,primary key(gid),
 foreign key(sid) references student_details(id),
 foreign key(cid) references course_details(id));
 
 insert into grade_details(gid,sid,cid,percent)
values(01,101,1,90),(02,102,2,87),(03,103,3,88),(04,104,4,87);

select*from student_details;
select*from course_details;
select*from lecture_details;
select*from semester_details;
select*from grade_details;

