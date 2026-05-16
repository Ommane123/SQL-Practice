create database if not exists shopdb;
use shopdb;

create table customers(
	CustomerID int auto_increment primary key,
    Name varchar(100),
    Email varchar(100),
    Address varchar(200)
);
-- even if you write name of column in lower or upper dont worry
insert into customers (name, email, Address)
values
('Om Mane', 'ommane1327@gmail.com', 'Kawathe, Satara'),
('Amit Kumar', 'amit@email. com', 'Delhi, India'),
('Neha Verma', 'neha@email.com', 'Bangalore India');

-- for all data
select * from customers;

-- for specific cloumns 
select name from customers;

-- for no dups
select distinct name, address from customers;
-- distinct keyword helps to get unique data from table

-- Filtering

-- like keyword is always used with % symbaol like below
select * from customers where address like '%Satara%';
select * from customers where name = 'Om mane' and address like '%satara%';
select * from customers where address not like '%delhi%';
-- not keyword give us everything except the filtered one

-- Sorting

select * from customers order by name asc;
select * from customers order by name desc;

select * from customers;

update customers 
set name = 'ravi awachar'
where customerid = 4;

-- deleting table or from table

delete from customers
where name = 'ravi awachar';

delete from customers
where Email = 'amit@gmail.com';

select * from customers;


