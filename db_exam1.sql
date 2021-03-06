--1
create database exam_db;

--2
create table major(
major_id int primary key,
major_name varchar(50)
);

--3
create table student(
student_id int primary key,
student_name varchar(50),
grade int,
hometown varchar(50),
major_id int not null
);

--4
insert into major values (1,'英文学'),
(2,'応用科学'),(3,'情報工学'),(4,'経済学'),
(5,'国際文化');


--5
insert into student values 
(1,'山田',1,'宮城',1),
(2,'田中',1,'東京',2),
(3,'佐藤',1,'東京',3),
(4,'鈴木',2,'鹿児島',1),
(5,'高橋',2,'北海道',2),
(6,'吉田',2,'東京',1),
(7,'伊藤',3,'鹿児島',2),
(8,'山本',3,'神奈川',3),
(9,'森本',4,'沖縄',4),
(10,'吉岡',4,'神奈川',5);

--6
select * from student where grade=1;

--7
select * from student where hometown = '東京';

--8
select major_name from major;

--9
update student set grade = 3 where student_id = 10;

--10
delete from student where student_id = 10;