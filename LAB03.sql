SELECT title,COALESCE(pubdate, 'Not available') as [Publication Date]
FROM titles;

SELECT UPPER(CONCAT(au_fname, ' ' , au_lname)) as Name
FROM authors;

SELECT GETDATE() as CurrentDate,hire_date,DATEDIFF(day,Hire_Date,GETDATE()) as [Experience in Days]
FROM employee;

SELECT GETDATE() as currentDate,hire_date,DATEDIFF(year,hire_date,GETDATE()) as [Experience in Years]
FROM employee;

SELECT au_fname,REPLACE(address, 'St', 'Street') as Address
FROM authors;

SELECT orderDate,DATENAME(month, orderdate) as [Order Month]
FROM orders;

SELECT productname,COALESCE(unitsinstock, 'Out of stock') as [Units in Stock]
FROM products;

SELECT productName,ABS(unitsinstock-unitsonorder) as Orders
FROM products;

SELECT CONCAT(SUBSTRING(City,1,3),SUBSTRING(Country, 1, 2)) as Area
FROM customers;

SELECT CONCAT(LEFT(City, 3),LEFT(Country, 2)) as CityCountry
FROM customers;

SELECT GETDATE() as [System Date],DATEPART(day,GETDATE()) as Day,DATEPART(month,GETDATE()) as Month,DATEPART (year, GETDATE()) as Year

SELECT GETDATE() as [SystemDate], day(GETDATE()) as Day, month(GETDATE()) as Month, year(GETDATE()) as Year



