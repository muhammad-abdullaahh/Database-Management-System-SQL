select *
from categories

select *
from products

--INNER JOIN to join category id in both tble
select productid as [Product Id] ,productname as [product Name],categoryname as [Category Name]
from products inner join categories on products.categoryid=categories.categoryid

--INNER JOIN to join employee id in both tbles
select orderid,orderdate,firstname,lastname,employees.employeeid
from orders inner join employees on orders.employeeid=employees.employeeid

--OUTER RIGHT JOIN to join category id in both tbles
select categoryname,productname
from products
right join categories on categories.categoryid=products.categoryid
where products.productname like 'C%'

--CROSS JOIN to join products table with categories table
select categories.categoryname,products.productname
from products
cross join Categories

--LAB FILE TASKS
--1
SELECT p.ProductName, s.ContactName AS SupplierName
FROM Products p JOIN Suppliers s ON p.SupplierID = s.SupplierID
WHERE s.ContactName NOT LIKE '%A%' AND LEN(p.ProductName) <= 10;  

--3
SELECT P.SupplierID, COUNT(*) AS ProductCount
FROM Products P
GROUP BY P.SupplierID
HAVING COUNT(*) <= 5;

--PERFROMANCE TASKS
--2
select o.orderid,companyname
from orders o
inner join customers c on o.CustomerID=c.CustomerID

--3
SELECT c.CompanyName, COUNT(*) AS TotalOrders
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CompanyName;

--4
select contactname
from products
right join suppliers on suppliers.supplierid=products.supplierid
where contactname like 'c%'