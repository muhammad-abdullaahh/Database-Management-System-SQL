SELECT *
FROM Employee

CREATE DATABASE Information;

USE Information
Create TABLE Employee(
empno decimal(4,0) NOT NULL,
ename varchar(10) NOT NULL,
job varchar(9),
mgr decimal(4,0),
hiredate date 
)

ALTER Table employee 
ADD sal money,
    comm money,
    deptno decimal(2,0)

INSERT INTO Employee
(empno,ename,job,mgr,hiredate,sal,comm,deptno)
VALUES
(1,'Abdullah','Delivery',3,'2024-01-22',50000,10000,10),
(2,'Ali','Manager',NULL,'2023-05-10',80000,15000,20),
(3,'Ahmed','Clerk',2,'2024-02-15',30000,5000,10),
(4,'Usman','Salesman',2,'2023-11-01',45000,7000,30),
(5,'Hassan','Analyst',2,'2024-03-12',60000,8000,20);

DROP DATABASE Information;


--TASK 02
select * from Information

CREATE DATABASE [Book Store];

CREATE TABLE Information(
isbn varchar(10) UNIQUE NOT NULL,
title varchar(50) NOT NULL,
author varchar(30) NOT NULL,
genre varchar(20) NOT NULL,
price money NOT NULL,
)

INSERT INTO Information
(isbn,title,author,genre,price)
VALUES
('978-3','The Great Gatsby','F. Scott Fitzgerald','Fiction',10.99),
('978-0','To Kill a Mockingbird','Harper Lee','Fiction',8.99),
('978-1','1984','George Orwell','Dystopian',9.99)

TRUNCATE TABLE Information;

DROP DATABASE [Book Store];

--TASK 03
select * from Employees

CREATE DATABASE Company;

CREATE TABLE Employees(
emp_id int PRIMARY KEY,
empname varchar(40) NOT NULL,
department varchar(20) NOT NULL,
position varchar(20) NOT NULL,
salary money NOT NULL
)

INSERT INTO Employees
(emp_id,empname,department,position,salary)
VALUES
(1,'John Doe','IT','Software Engineer',60000),
(2,'Jane Smith','HR','HR Manager',75000),
(3,'Emily Davis','Finance','Financial Analyst',65000)

--TASK 04
select * from Customers


CREATE DATABASE CRM;

CREATE TABLE Customers(
customer_id int PRIMARY KEY,
customer_name varchar(50) NOT NULL,
email varchar(50) NOT NULL,
phone varchar(15) NOT NULL
)

CREATE TABLE Orders(
order_id int PRIMARY KEY,
customer_id int,
order_date date NOT NULL,
total_amount money NOT NULL

FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
)

CREATE TABLE Products(
product_id int PRIMARY KEY,
product_name varchar(50) NOT NULL,
description varchar(255),
price money NOT NULL
)

--Junction Table for Many-to-Many Relationship between Orders and Products
CREATE TABLE OrderDetails(
orderdetail_id int PRIMARY KEY,
order_id int,
product_id int,
quantity int NOT NULL,

FOREIGN KEY (order_id)
REFERENCES Orders(order_id),

FOREIGN KEY (product_id)
REFERENCES Products(product_id)
)

TRUNCATE TABLE Customers;
TRUNCATE TABLE Orders;
TRUNCATE TABLE Products;
TRUNCATE TABLE OrderDetails;

DROP DATABASE CRM;

--TASK 05
    CREATE DATABASE Store;

    CREATE TABLE Product(
    model varchar(50) PRIMARY KEY,
    maker varchar(10) NOT NULL,
    type varchar(50) NOT NULL
    )

    CREATE TABLE PC(
    code int PRIMARY KEY,
    speed smallint NOT NULL,
    ram smallint NOT NULL,
    hd real NOT NULL,
    cd varchar(10) NOT NULL,
    price money,

    model varchar(50) NOT NULL
    FOREIGN KEY REFERENCES Product(model) 
    )

    CREATE TABLE Laptop(
    code int PRIMARY KEY,
    speed smallint NOT NULL,
    ram smallint NOT NULL,
    hd real NOT NULL,
    price money,
    screen tinyint NOT NULL,

    model varchar(50) NOT NULL
    FOREIGN KEY REFERENCES Product(model) 
    )

    CREATE TABLE Printer(
    code int PRIMARY KEY,
    color char(1) NOT NULL,
    type varchar(10) NOT NULL,
    price money,

    model varchar(50) NOT NULL
    FOREIGN KEY REFERENCES Product(model) 
    )


    select * from Product
    select * from PC
    select * from Laptop
    select * from Printer


























