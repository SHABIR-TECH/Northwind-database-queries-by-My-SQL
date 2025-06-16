use northwind;
select * from customers;
select customername, city, country from customers;
select productid, productname from products;
select firstname, lastname, birthdate from employees;
select customername, address, city from customers;
select country from customers;
select distinct country from customers;
select count(distinct country) from customers;
select distinct city from suppliers;
select count(distinct city) from suppliers;
select * from customers where country = "mexico";
select * from products where productid = 1;
select * from customers where city = "london";
select * from customers where country = "USA";
select count(*) from customers where country = "USA";
select * from products where price > 100;
select * from customers where customerid >= 15;
select * from order_details where quantity < 3;
select * from employees where birthdate > "1960-01-01"; 
select * from customers where country = "germany" and city = "berlin";
select * from customers where country = "UK" AND CITY = "LONDON";
SELECT * FROM CUSTOMERS WHERE country = "uk"  or country = "usa";
select * from products where price < 5 and productid > 10;
select * from customers where city = "portland" or city = "kirkland";
select * from orders where orderdate < "1996-08-27" or orderdate > "1997-02-21";
select * from customers order by country;
select * from products order by price;
select productname, price from products order by price desc;
select * from customers order by country , customername ;
select * from employees order by lastname, birthdate desc;
select *from customers where country ="usa" order by customername desc;
select * from customers limit 3;
select * from products order by price limit 5;
select * from customers where country = "germany" limit 4;
select * from products where categoryid = 1 limit 6;
select * from products where price > 20 limit 10;
select * from customers where city = "london" limit 3;
select min(price) as smallestprice from products;
select max(price) as largestprice from products;
select min(price) as lowestprice from products;
select max(price) as highestprice from products;
select count(productid) from products;
select avg(price) from products;
select sum(quantity) from order_details;
select * from customers where customername like "b%";
select * from customers where customername like "%a";
select * from customers where customername like "%maison%";
select * from customers where customername like "_r%";
select * from customers where customername like "a__%";
select * from customers where contactname like "a%o";
select * from customers where customername like "%a" or customername like "b%"; 
select * from customers where customername like "a%" and customername like "r%"; 
select * from customers where customername not like "%maison%";
select * from customers where country like "u__%";
select * from customers where customername not like"a%";
select * from suppliers where country like "%land";
select * from employees where firstname like"_n%";
select * from shippers where shippername like"%express%";
select * from customers where country in ("germany", "franc", "uk");
select * from customers where country not in ("germany", "franc", "uk");
select *from customers where country in (select country from suppliers);
select * from products where productname in (select categoryname from categories);
select * from customers where city in ("berlin","madrid" or "paris");
select * from orders where shipperid in (1,3);
select * from products where price in (10, 20, 30);
select * from customers where customerid in (select customerid from orders);
select * from products where price between 10 and 20;
select * from products where price not between 10 and 20;
select * from products where productname between "konbu" and "tofu";
select * from products where price between 10 and 20 and categoryid not in (1,2,3);
select * from products where productname between "carnarvon" and "mozzarella di giovanni" order by productname;
select * from orders where orderdate between  "1996-07-01"  and "1996-07-31";
select customerid as id, customername as customer from customers;
select customername as customer, contactname as "contact person" from customers;
select o.orderid, o.orderdate, c.customername from customers as c, orders as o where c.customername = "around the horn";
select * from orders where customerid in (select customerid from customers where customername like "a%");

-- joins
select orders.orderid, customers.customername, orders.orderdate 
from orders 
inner join customers 
on orders.customerid = customers.customerid;

-- (select *
-- from table1
-- inner join table2
-- on common field from table1 = common field in table2;) --

select *
from products
inner join categories
on products.categoryid = categories.categoryid;

select *
from customers
inner join orders
on customers.customerid = orders.customerid;

select *
from customers
inner join orders
on customers.customerid = orders.customerid
where customername = 'Wilman Kala';

select *
from customers
inner join orders
on customers.customerid = orders.customerid
where customername = 'Wilman Kala'
order by customers.customername;

select *
from customers
left join orders
on customers.customerid = orders.customerid;

select *
from customers
right join orders
on customers.customerid = orders.customerid;

select orders.orderid, employees.lastname, employees.firstname
from orders
right join employees 
on orders.employeeid = employees.employeeid
order by orders.orderid;

select orders.orderid, employees.lastname, employees.firstname
from orders
right join employees 
on orders.employeeid = employees.employeeid
where orders.orderid is null
order by orders.orderid;

select orders.orderid, employees.lastname, employees.firstname
from orders
left join employees 
on orders.employeeid = employees.employeeid
order by orders.orderid;

select orders.orderid, employees.lastname, employees.firstname
from orders
left join employees 
on orders.employeeid = employees.employeeid
where orders.orderid is null
order by orders.orderid;


select customers.customername, orders.orderid
from customers
cross join orders;

-- group by
select count(*), country
from customers
group by country;

select employeeid, count(*)
from orders
group by employeeid;

select employeeid, count(*)
from orders
group by employeeid
order by count(*) desc;

select orderid, sum(quantity)
from order_details
group by orderid;

select avg(country)
from customers
group by country;


select count(distinct city), country
from customers
group by country;

select shippers.shippername, count(orders.orderid) as numberoforders
from orders
left join shippers 
on orders.shipperid = shippers.shipperid
group by shippername;

select p.productname, p.price, od.quantity, od.quantity * p.price as sales
from products as p
inner join order_details as od
on p.productid = od.productid;

select p.productname, sum(od.quantity * p.price) as sales
from products as p
inner join order_details as od
on p.productid = od.productid
group by p.productname;

select p.productname, sum(od.quantity * p.price) as sales
from products as p
inner join order_details as od
on p.productid = od.productid
group by p.productname
order by sales desc;

select count(customerid) as numberofcustomer, country 
from customers
group by country
order by numberofcustomer desc ;

select categoryname, count(categoryname) as "quantity sold"
from products as p
inner join categories as c
on p.categoryid = c.categoryid
group by categoryname;

select e.employeeid, e.firstname, e.lastname, count(o.orderid) as "total order"
from employees as e
inner join orders as o
on e.employeeid = o.employeeid
group by employeeid, e.firstname, e.lastname
order by "total order" desc;

