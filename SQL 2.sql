USE NORTHWIND;
-- Retrieve all columns from the "Customers" table.
SELECT * FROM CUSTOMERS;
-- Retrieve only the "CustomerName" and "City" columns from the "Customers" table.
SELECT CUSTOMERNAME, CITY FROM CUSTOMERS;
-- Retrieve distinct values of the "City" column from the "Customers" table.
SELECT distinct CITY FROM CUSTOMERS;
-- Retrieve all columns from the "Products" table where the "Price" is greater than 50.
SELECT * FROM PRODUCTS WHERE PRICE > 50;
-- Retrieve all columns from the "Customers" table where the "Country" is either 'USA' or 'UK'.
SELECT * FROM  CUSTOMERS WHERE COUNTRY = "USA" OR "UK";
-- Retrieve all columns from the "Orders" table, sorted by the "OrderDate" in descending order.
SELECT * FROM ORDERS ORDER BY ORDERDATE DESC;
-- Retrieve all columns from the "Products" table where the "Price" is between 20 and 50, ordered by descending "Price".
SELECT * FROM Products WHERE PRICE BETWEEN 20 AND 50 ORDER BY PRICE DESC;
-- Retrieve all columns from the "Customers" table where the "Country" is 'USA' and "City" is either 'Portland' or 'Kirkland', ordered by ascending "CustomerName".
SELECT * FROM CUSTOMERS WHERE COUNTRY = "USA" AND CITY = "PORTLAND" OR "KIRKLAND" ORDER BY CUSTOMERNAME DESC;
-- Retrieve all columns from the "Customers" table where the "Country" is 'UK' or "City" is 'London', ordered by descending "CustomerName".
SELECT * FROM CUSTOMERS WHERE COUNTRY = "UK" OR CITY = "LONDON" ORDER BY CUSTOMERNAME DESC;
-- Retrieve all columns from the "Products" table where the "CategoryID" is 1 or 2, ordered by ascending "ProductName".
SELECT * FROM PRODUCTS WHERE CATEGORYID IN (1,2) ORDER BY PRODUCTNAME DESC;

select *
from orders
where customerid in (select customerid from customers where customername like "A%" );
