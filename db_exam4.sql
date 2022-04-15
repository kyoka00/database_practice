--1
create index senko on major(major_name);
create index seito on student(student_name);
create index gakunen on student(grade, student_name);

--2
create view v_student as 
select student_id, student_name, hometown, major_name
from student s
join major m
on s.major_id = m.major_id
where s.student_id in (1,4,5,7,8,9)
order by major_name asc, student_id asc;

--3
create materialized view mv_student as 
select student_id, student_name, hometown, major_name
from student s
join major m
on s.major_id = m.major_id
where s.student_id in (1,4,5,7,8,9)
order by major_name asc, student_id asc;

--4*
create function multiply(mult decimal) returns integer
language plpgsql
as $function$
declare 
    begin
        return trunc(mult* 1.1,0);
    end;
$function$;

select *, multiply(amount) as カラム名なし from sales
order by sales_id asc limit 5;

--5
create table users
(id serial primary key, name varchar(50));
create sequence id_number start with 101;
alter table users alter column id set default nextval('id_number');

--5模範解答
create table users
(id serial primary key, name varchar(50));
SELECT c.relname FROM pg_class c LEFT join pg_user u ON c.relowner = u.usesysid WHERE c.relkind = 'S';
alter sequence users_id_seq restart with 101;