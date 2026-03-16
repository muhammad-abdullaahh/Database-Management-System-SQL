CREATE database MyDatabase --This will create the database
DROP database MyDatabase --This will delete the database

USE MyDatabase -- This will select the database where we want to create the table
CREATE table customer( --This will create the table named customer 
customerId INT NOT NULL Primary Key,
Email varchar(50)
)

DROP table customer --This will delete the table

CREATE table customer(
customerId INT NOT NULL Primary Key,
Email varchar(50)
)

ALTER table customer --This will add another field in the table
ADD Name varchar(50)

ALTER table customer --This will modify an existing field in the table
ALTER Column Name varchar(100)

ALTER TABLE customer --This will delete an existing field in the table
DROP column Email

USE MyDatabase
CREATE table orderr(
orderId int not null Primary Key,
customerId int Foreign Key REFERENCES customer(customerId),
orderItems varchar(50), 
contact int unique
)

USE MyDatabase
CREATE table employee(
employeeId int,
employeeName varchar(50)
)

ALTER TABLE employee
ADD CONSTRAINT pk_employeeId Primary Key(employeeId) 


ALTER TABLE orderr 
ADD employeeId int Foreign Key REFERENCES employee(employeeId)

ALTER TABLE orderr 
ADD constraint fk_employeeesss foreign key(employeeId) references employee(employeeId)










