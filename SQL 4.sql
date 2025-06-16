USE NORTHWIND;
SELECT PRODUCTS.PRODUCTNAME AS PRODUCT, SUPPLIERS.SUPPLIERNAME AS SUPPLIER FROM PRODUCTS INNER JOIN SUPPLIERS ON PRODUCTS.SUPPLIERID =SUPPLIERS.SUPPLIERID WHERE SUPPLIERNAME = "TOKYO TRADERS" ORDER BY PRODUCTS.PRODUCTNAME;
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE ORDERS.ORDERID IS NULL
ORDER BY Customers.CustomerName;

select *
from products as p
left join order_details as od
on p.productid = od.productid
where od.orderid is null;

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;

SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

-- count number of different cities in each country in Customers table
select count(distinct city), Country
from customers
group by Country;

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;

SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;


-- total sales amount by each product (quantity * price)
-- join products to order_details table
select  p.productname, sum(od.quantity * p.price) as sales
from products as p
inner join order_details as od
on p.productid = od.productid
group by p.productname;

SELECT p.ProductName, SUM(od.Quantity * P.Price) AS TotalSales FROM Order_Details as od JOIN Products as p ON od.ProductID = p.ProductID GROUP BY p.ProductName ORDER BY TotalSales DESC;

SELECT COUNTRY, COUNT(CUSTOMERID) AS NUMBEROFCUSTOMERS
FROM CUSTOMERS
GROUP BY COUNTRY;

select sum(o.Quantity) as 'TotalQuantity', p.ProductName
from products p
inner join order_details o
on p.ProductID=o.ProductID
group by p.ProductName
ORDER BY TotalQuantity desc;

select e.employeeid, e.firstname,e.lastname, count(o.orderid) as ordercount 
from employees as e
inner join orders as o
on e.employeeid = o.employeeid
group by e.employeeid, e.firstname, e.lastname
order by ordercount 
; 

