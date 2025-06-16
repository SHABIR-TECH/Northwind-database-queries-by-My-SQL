-- You can open a query tab using CTRL + T from your keyboard
-- activate schema
use northwind;

-- SQL Keywords are not case sensivite 
-- SELECT is same as select
-- Every SQL query must start with select
select column1, column2
FROM table1;

-- if you want to return all rows and columns
select * 
from table1;

-- ; also indicate the end of the query

-- Customers table
SELECT * FROM Customers;


-- The following SQL statement selects the "CustomerName", "City", and "Country" columns from the "Customers" table:
SELECT CustomerName, City, Country 
FROM Customers;

-- Product information
SELECT ProductID, ProductName 
FROM Products;

-- Write SQL query to return employee FirstName, LastName and BirthDate.
Select FirstName, Lastname, BirthDate
from Employees;

-- Write SQL query to return CustomerName, Address and City.
select customername, Address, City
From Customers;

-- countries in the customers table
select country
from customers;

-- different countries
SELECT DISTINCT Country 
FROM Customers;

-- Number of countries
SELECT COUNT(DISTINCT Country) 
FROM Customers;
-- count function will count number of the rows in the result set.

-- Write SQL query to return different cities from suppliers table. 
select distinct city
from suppliers;

-- Write SQL query to return number of cities from customers table.
select count(distinct City)
from Customers;
 
 
-- WHERE Clause
select *
from Customers
where Country = "Mexico";
-- values from the table must be in "" or ''
select *
from Customers
where Country = 'Mexico';

select *
from Products
where Productid = 1;


-- Write SQL query to return Customers from London.
select * from Customers 
where city ='London';

-- Write SQL query to return number of Customers from USA.
SELECT count(*)
FROM Customers
WHERE Country = 'USA';
 
SELECT * FROM Customers
WHERE CustomerID = 1;

-- product with price higher than 100
SELECT * 
FROM Products 
WHERE Price > 100;

-- Write SQL query to return Customers with their customerid is equal to and greater than 15.
select * from customers 
where customerid >= 15;


-- Write SQL query to return order details where order quantity is less than 3.
select *
from order_details
where quantity <3;


-- Write SQL query to find details of employees who were born after 1960-01-01.
select * from employees 
where birthdate > "1960-01-01" ;

-- AND, OR and NOT Operators
SELECT * FROM Customers
WHERE Country = 'Germany' AND City = 'Berlin';
-- and operatore requires both condition to be met.

SELECT * FROM Suppliers
WHERE Country = 'Japan' AND City = 'Tokyo';

-- Write SQL query to find customer from UK and London.
select *
from customers
where country = 'UK'
and city = 'london';

-- Write SQL query to find customer from UK and US.
SELECT *
FROM Customers
WHERE Country= "USA" and Country= "uk";



-- -- Write SQL query to find customer from UK or US.
SELECT *
FROM Customers
WHERE Country= "USA" or Country= "uk";


-- Write SQL query to find products with price is less than 5 and productid more than 10.
select * from products 
where price < 5 and productid > 10;
 
SELECT * FROM Customers
WHERE City = 'Berlin' OR City = 'Stuttgart';
-- or operator returns result if either of the conditions is true.


SELECT * FROM Customers
WHERE Country = 'Germany' OR Country = 'Spain';
 
-- Write SQL query to find customers from Portland or Kirkland.
select *
from customers	
where city = "portland" or city = "kirkland";
 
-- Write SQL query to find orders before 1996-08-27 or after 1997-02-21.
SELECT * FROM ORDERS 
WHERE ORDERDATE < "1996-08-27" OR ORDERDATE > "1997-02-21";

-- ORDER BY (sorting results)
SELECT * FROM Customers
ORDER BY Country;

-- Write SQL query to return product names and order by Price.
SELECT ProductName, Price FROM PRODUCTS
order by Price asc;
 
SELECT ProductName, Price FROM Products
ORDER BY Price DESC;
 
SELECT * FROM Customers
ORDER BY Country, CustomerName;
-- order of writing column name is important

SELECT * FROM Customers
ORDER BY CustomerName, Country ;

-- Write SQL query to sort employess by lastname and birthdate in decreasing order.
SELECT * FROM employees 
ORDER BY lastname DESC, birthdate DESC;

-- Write an SQL query to retrieve all columns from the Customers table for customers located in the USA and sort them by CustomerName in ascending order.
SELECT * 
FROM Customers
where country = 'usa' 
order by customername;
 
-- LIMIT Clause
SELECT * FROM Customers
LIMIT 3;

-- Top 5 Cheapest products
SELECT * FROM Products
ORDER BY PRICE 
LIMIT 5;

SELECT * FROM Customers
WHERE Country='Germany'
order by Customername
LIMIT 3;

-- limit will always work at the last step

SELECT * FROM Products
WHERE CategoryID=1
LIMIT 3;

 -- Write an SQL query to get the top 10 products from the Products table with a Price greater than 20, limiting the result to 10 rows.
SELECT *
FROM Products
WHERE Price >20
LIMIT 10;

-- Write an SQL query to find the first 3 customer in the Customers table who live in 'London'.
select * from customers 
where city='London' 
limit 3;
 
-- MIN, MAX, AVG, SUM and COUNT Functions
SELECT MIN(Price) as LowestPrice
FROM Products;
-- as means aliasing your result set

SELECT MAX(Price) as HighestPrice
FROM Products;


select min(orderdate) from orders;
select min(productname) from products;
select max(productname) from products;


-- number of products in products table
SELECT COUNT(ProductID)
FROM Products;

-- Average product price
SELECT AVG(Price)
FROM Products;


SELECT round(AVG(Price),2)
FROM Products;

SELECT SUM(Quantity)
FROM Order_Details;
