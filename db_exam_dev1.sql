--1
create database axiz_exam_dev;

--2
create table customer(
customer_id int primary key,
customer_name varchar(50)
);

--3
create table sales(
sales_id int primary key,
order_date date,
customer_id int not null,
amount decimal
);

--4
insert into customer values(1,'田中'),(2,'鈴木'),
(3,'田中'),(4,'田島');

--5
insert into sales values
(1, '2018-11-01', 1, 3000),
(2, '2018-10-01', 3, 5000),
(3, '2018-11-01', 4, 6000),
(4, '2018-11-02', 2, 2000),
(5, '2018-11-05', 2, null);

--6
select * from sales where amount < 5000;

--7
select * from sales where amount >= 5000;

--8
select sales_id, order_date, customer_id, amount*1.1 
from sales;

--9
select * from sales where amount is not null;

--10
select * from customer where customer_name <> '田中';

--11
update sales set order_date ='2018-11-05', customer_id =4 
where sales_id=4;

--12
delete from sales where amount is null;