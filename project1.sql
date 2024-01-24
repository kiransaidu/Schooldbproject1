create database practiceproj1SchoolDatabase1
use practiceproj1SchoolDatabase1


create table Classes (
ClassId int primary key ,
ClassName nvarchar(50)
)

create table Subjects (
SubjectId int primary key ,
SubjectName nvarchar(50),
TeacherName nvarchar(50)
)

create table Student(
StudentId int primary key,
StudentName nvarchar(50),
ClassId int foreign key references Classes(ClassId),
SubjectId int foreign key references Subjects(SubjectId)
)

insert into Classes values (1,'ClassA')
insert into Classes values (2,'ClassB')
insert into Classes values (3,'ClassC')
insert into Classes values (4,'ClassD')
insert into Classes values (5,'ClassE')
insert into Classes values (6,'ClassF')

select * from Classes

insert into Subjects values (1,'Sanskrit','Kiran')
insert into Subjects values (4,'Maths','Surya')
insert into Subjects values (2,'Telugu','Krishna')
insert into Subjects values (5,'Physics','Pawan')
insert into Subjects values (3,'English','Subham')
insert into Subjects values (6,'Social','Murugan')

select * from Subjects

insert into Student values (10,'Kiran',1,4)
insert into Student values (20,'Sasidhar',4,3)
insert into Student values (30,'Chaitanya',2,5)
insert into Student values (40,'Swaroop',5,2)
insert into Student values (50,'Venkatesh',3,6)
insert into Student values (60,'Phani',6,1)

select * from Student