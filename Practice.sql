select * from ClassDetails
select * from StudentMarks


CREATE DATABASE Practice

CREATE TABLE ClassDetails (
	[Registration Number] varchar(50) NOT NULL,
	Names varchar(50) NOT NULL,
	Age int NOT NULL,
	Courses varchar(50) NOT NULL
)

ALTER TABLE ClassDetails
ADD Constraint PK_ClassDetails 
PRIMARY KEY ([Registration Number]);

CREATE TABLE StudentMarks (
[Registration Number] varchar(50),
Subject varchar(50),
Marks int
)

ALTER TABLE StudentMarks
ADD CONSTRAINT FK_StudentMarks
FOREIGN KEY ([Registration Number])
REFERENCES ClassDetails([Registration Number]);

INSERT INTO ClassDetails
VALUES ('02-131242-007','Urooba Batool', 20, 'SQL'),
       ('02-131242-017','Shafaq Abdul Samad', 19, 'SQL'),
       ('02-131242-070','Muhamad Abdullah', 20, 'SQL'),
	   ('02-131242-072','Muhammad Asad', 20, 'SQL')

INSERT INTO StudentMarks
VALUES ('02-131242-007', 'SQL', 85),
       ('02-131242-017', 'SQL', 90),
       ('02-131242-070', 'SQL', 80),
       ('02-131242-072', 'SQL', 88)

SELECT *
FROM ClassDetails c
JOIN StudentMarks s
ON c.[Registration Number] = s.[Registration Number];



