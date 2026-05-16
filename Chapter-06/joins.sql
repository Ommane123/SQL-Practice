create database if not exists RetailStore;
use retailstore;

create table customer (
	CustomerID int primary key,
    CustomerName varchar(100)
);

CREATE TABLE Orders (
OrderID INT PRIMARY KEY,
Product VARCHAR(100),
Amount DECIMAL(10,2),
CustomerID INT,
FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Customers Table
INSERT INTO Customer VALUES
(1, 'Rahul Sharma'),
(2, 'Anjali Mehta'),
(3, 'Amit Verma');

-- Orders Table
INSERT INTO Orders VALUES
(101, 'Laptop', 50000, 2),
(102, 'Mouse', 500, 1),
(103, 'Keyboard', 700, 1);

-- inner join 
select customer.customername, orders.product, orders.amount
from customer
inner join orders on customer.customerid = orders.customerid;

-- left join
select customer.customername, orders.product, orders.amount
from customer
left join orders on customer.customerid = orders.customerid;

-- right join
select customer.customername, orders.product, orders.amount
from customer
right join orders on customer.customerid = orders.customerid;

-- full outer join using union of left and right join
select customer.customername, orders.product, orders.amount
from customer
left join orders on customer.customerid = orders.customerid

union

select customer.customername, orders.product, orders.amount
from customer
right join orders on customer.customerid = orders.customerid;
