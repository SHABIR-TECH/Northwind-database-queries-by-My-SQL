use northwind;

-- JOINS 
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
-- inner join table -- on common fields-- . represent reference orders.orderid means orders table and orderid column


SELECT OrderID, CustomerName, OrderDate, CustomerID FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;
-- this query return error. Beacuse customerid is in both tables-- mysql is confused which customerid to pick


SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate, Customers.CustomerID FROM Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


select * from table1 inner join table2 on common field from table1 = common field in table2;

-- Join products to categories
select * from products inner join categories on products.categoryid = categories.categoryid;
-- Looking for matching results for categoryid

-- joining customers to orders table
select * from customers inner join orders on customers.customerid  = orders.customerid;
-- there might be some customers who never placed an order-- beacuse inner join returns only matching resilts

-- products and their suppliers
SELECT SupplierName, ProductName FROM Products INNER JOIN Supplierson Products.SupplierID = Suppliers.SupplierID;

