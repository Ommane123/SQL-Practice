CREATE DATABASE IF NOT EXISTS SimpleStore;
USE SimpleStore;

CREATE TABLE Sales(
SalesID INT AUTO_INCREMENT PRIMARY KEY,
Product VARCHAR(50),
Category VARCHAR(50),
Amount DECIMAL(10,2),
SaleDate DATE

);

INSERT INTO Sales(Product, Category, Amount, SaleDate) VALUES
('Pen', 'Stationary', 25.00, '2025-03-01'),
('Notebook', 'Stationary', 50.00, '2025-03-01'),
('Mouse', 'Electronics', 500.00, '2025-03-02'),
('Keyboard', 'Electronics', 700.00, '2025-03-02'),
('Charger', 'Electronics', 300.00, '2025-03-03'),
('Bag', 'Accessories', 1000.00, '2025-03-04');

select * from sales;

-- counts the sales 
SELECT COUNT(*) FROM Sales;

-- sums any column we tell
select sum(amount) from sales;

-- gives average of the column given
select avg(amount) from sales;

-- to find the minimum value from a column
-- to find the maximum value from a column
select min(amount), max(amount) from sales;

-- to find total sale from category
select category, sum(amount)
from sales
group by category;

-- filtering groups after summing
-- where doesn't work due to group
select category, sum(amount)
from sales
group by category
having sum(amount) > 1000;


