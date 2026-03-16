CREATE DATABASE Lab08

select * from Stores

--TASK 01
USE Lab08
CREATE TABLE Stores (
Store_ID INT PRIMARY KEY,
Store_Name VARCHAR(50),
Location VARCHAR(50),
Manager VARCHAR(50),
Opening_Date DATE
)

INSERT INTO Stores (Store_ID, Store_Name, Location, Manager, Opening_Date)
VALUES
(1, 'Store A', 'New York', 'John Smith', '2023-05-10'),
(2, 'Store B', 'Los Angeles', 'Emily Jones', '2023-06-15'),
(3, 'Store C', 'Chicago', 'David Lee', '2023-07-20'),
(4, 'Store D', 'Houston', 'Sarah Brown', '2023-08-25'),
(5, 'Store E', 'Miami', 'Michael Tan', '2023-09-30');

--TASK 02
select * from publishers
select * from discounts
select * from employee
select * from titleauthor
select * from authors

--Part a
INSERT INTO publishers
VALUES
('9998', '	Julie', 'Manchester', 'BH', 'England')

--Part b
UPDATE discounts
SET discount = discount + (discount * 0.05)

--Part c
DELETE FROM employee
WHERE emp_id = 'VPA30890F'

--Part d
DELETE FROM titleauthor
WHERE au_id IN (
    SELECT au_id FROM authors
    WHERE au_fname LIKE 'A%' OR au_fname LIKE 'S%'
)
DELETE FROM authors
WHERE au_fname LIKE 'A%' OR au_fname LIKE 'S%';

--TASK 03
USE StudentManagement
SELECT * FROM Students;
SELECT * FROM Courses;
SELECT * FROM Student_Courses;

CREATE DATABASE StudentManagement;

USE StudentManagement
CREATE TABLE Students (
    Student_ID      INT PRIMARY KEY IDENTITY(1,1),
    Student_Name    VARCHAR(100) NOT NULL,
    Date_of_Birth   DATE NOT NULL,
    Gender          VARCHAR(10) NOT NULL,
    Email           VARCHAR(100) UNIQUE NOT NULL,
    Phone_Number    VARCHAR(15)
);

CREATE TABLE Courses (
    Course_ID           INT PRIMARY KEY IDENTITY(1,1),
    Course_Name         VARCHAR(100) NOT NULL,
    Instructor          VARCHAR(100) NOT NULL,
    Course_Description  VARCHAR(255),
    Start_Date          DATE NOT NULL,
    End_Date            DATE NOT NULL
);

CREATE TABLE Student_Courses (
    Student_ID  INT NOT NULL,
    Course_ID   INT NOT NULL,
    PRIMARY KEY (Student_ID, Course_ID),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Course_ID)  REFERENCES Courses(Course_ID)
)

INSERT INTO Students (Student_Name, Date_of_Birth, Gender, Email, Phone_Number)
VALUES
    ('Muhammad Abdullah',   '2005-12-27', 'Male',   'abdullah.27@email.com',        '0323-2441234'),
    ('Fatima Noor',         '2004-06-14', 'Female', 'fatima.noor14@email.com',      '0301-5567890'),
    ('Ali Hassan Raza',     '2003-09-03', 'Male',   'ali.hassanraza@email.com',     '0312-9988776'),
    ('Ayesha Siddiqui',     '2005-02-20', 'Female', 'ayesha.siddiqui20@email.com',  '0345-7712345'),
    ('Usman Tariq',         '2004-11-11', 'Male',   'usman.tariq11@email.com',      '0333-4456789'),
    ('Zainab Malik',        '2006-03-08', 'Female', 'zainab.malik08@email.com',     '0321-6634567');

INSERT INTO Courses (Course_Name, Instructor, Course_Description, Start_Date, End_Date)
VALUES
    ('Database Systems',    'Dr. Ahmed Raza',       'Intro to relational databases',        '2024-01-10', '2024-05-10'),
    ('Web Development',     'Prof. Sana Mirza',     'HTML, CSS, JS fundamentals',           '2024-01-12', '2024-05-12'),
    ('Data Structures',     'Dr. Usman Ghani',      'Arrays, trees, graphs and more',       '2024-02-01', '2024-06-01'),
    ('Machine Learning',    'Prof. Ayesha Khalid',  'Supervised and unsupervised ML',       '2024-02-15', '2024-06-15'),
    ('Cybersecurity',       'Dr. Tariq Mahmood',    'Network security and encryption',      '2024-03-01', '2024-07-01');

INSERT INTO Student_Courses (Student_ID, Course_ID)
VALUES
    (1, 1),
    (1, 2),
    (2, 1),
    (3, 3),
    (4, 4),
    (5, 5),
    (2, 3);


--TASK 04
 select * from employees
CREATE DATABASE Task04

USE Task04
CREATE TABLE Employees (
    Employee_ID     INT             PRIMARY KEY IDENTITY(1,1),
    First_Name      VARCHAR(50)     NOT NULL,
    Last_Name       VARCHAR(50)     NOT NULL,
    Salary          DECIMAL(10, 2)  NOT NULL,
    Hire_Date       DATE            CHECK (Hire_Date < GETDATE()),
    Department      VARCHAR(100)    CHECK (Department IN ('Sales', 'Marketing', 'Finance', 
                                    'Human Resources', 'Research', 'Development')),
    Email           VARCHAR(100)    UNIQUE CHECK (Email LIKE '%@gmail.com'),
    Phone_Number    VARCHAR(12)     CHECK (Phone_Number LIKE '[0-9]%' 
                                    AND Phone_Number NOT LIKE '%[^0-9]%')
)

INSERT INTO Employees (First_Name, Last_Name, Salary, Hire_Date, Department, Email, Phone_Number)
VALUES
    ('John',    'Doe',      50000.00, '2023-01-15', 'Sales',            'john.doe@gmail.com',       '1234567890'),
    ('Jane',    'Smith',    60000.00, '2022-11-20', 'Marketing',        'jane.smith@gmail.com',     '9876543210'),
    ('Michael', 'Johnson',  55000.00, '2023-03-10', 'Finance',          'michael.johnson@gmail.com','4567890123'),
    ('Emily',   'Brown',    52000.00, '2023-02-05', 'Human Resources',  'emily.brown@gmail.com',    '7890123456'),
    ('David',   'Wilson',   58000.00, '2023-04-25', 'Development',      'david.wilson@gmail.com',   '2345678901');

--4a
select * from employees

ALTER TABLE Employees 
ADD New_Employee_ID VARCHAR(20)

UPDATE Employees
SET New_Employee_ID= CONCAT(First_name, ' ', Last_name)


--4b
UPDATE EmployeeS
SET Last_Name = 'Jackson'
WHERE Employee_id = 3

--4c
UPDATE Employees
SET Salary = 1200
WHERE salary < 800

--4d
DELETE 
FROM Employees
WHERE New_Employee_ID = 'David Wilson'

