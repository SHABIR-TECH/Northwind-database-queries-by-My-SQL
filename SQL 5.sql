USE NORTHWIND;
-- Write SQL query to find supplier of each product
SELECT p.ProductName, s.SupplierName FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID;
-- Write sql query to  find category of each product
SELECT p.ProductName, c.CategoryName FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID;
-- Retrieve all products belonging to the meat/poultry category
SELECT p.ProductName FROM Products p JOIN Categories c ON p.CategoryID = c.CategoryID WHERE c.CategoryName = 'Meat/Poultry';
-- Retrieve the order ID, order date, customer name, and employee name for all orders.
SELECT o.OrderID, o.OrderDate, c.CustomerName,  e.Employeeid FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID JOIN Employees e ON o.EmployeeID = e.EmployeeID;
-- Retrieve the product name, category name, and supplier name for all products
select p.productname, c.categoryname, s.suppliername from products as p join Categories AS c ON p.CategoryID = c.CategoryID JOIN Suppliers AS s ON p.SupplierID = s.SupplierID;
-- .Create a report for all the orders of 1996 and their Customers.
SELECT o.OrderID, o.OrderDate, c.CustomerName FROM Orders o JOIN Customers c ON o.CustomerID = c.CustomerID WHERE YEAR(o.OrderDate) = 1996;
-- Retrieve all categories along with the number of products in each category
SELECT c.CategoryName, COUNT(p.ProductID) AS ProductCount FROM Categories c LEFT JOIN Products p ON c.CategoryID = p.CategoryID GROUP BY c.CategoryName;
-- Retrieve all products with their prices and the quantity ordered for each product
SELECT p.ProductName, p.Price, SUM(od.Quantity) AS TotalQuantityOrdered FROM Products p JOIN Order_Details od ON p.ProductID = od.ProductID GROUP BY p.ProductName, p.Price;


