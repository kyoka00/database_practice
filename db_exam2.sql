--1
select * from student 
where grade=1 and hometown='東京'
order by student_id ASC;

--2
select * from student 
where grade =1 or student_name like '%本'
order by student_id DESC;

--3
select major_id, max(grade)
from student
group by major_id
order by major_id ASC;

--4
select hometown, count(hometown)
from student
group by hometown
having count(hometown)>=2
order by hometown ASC;

--5
select s.student_name, m.major_name
from student s 
join major m
on s.major_id= m.major_id
order by m.major_name ASC, s.student_name ASC;

--6
select s.student_id, s.student_name,s.hometown, m.major_name
from student s
join major m
on s.major_id= m.major_id
where hometown <>'東京'
order by major_name ASC, student_id ASC;

--7
select student_id,
