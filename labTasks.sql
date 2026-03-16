--UNION gives the merge coloumns of two tables. It avoids duplicate terms. 
--the no of colomns shall be same
--the datatype shall be same
select city from employees
union select city from customers

--UNION ALL gives the merge coloumns of two tables. It gives duplicate terms too. 
--the no of colomns shall be same
--the datatype shall be same
select city from employees
union all select city from customers

--INTERSECT gives the common elements of two tables. 
--the no of colomns shall be same
--the datatype shall be same
select city from employees
intersect select city from customers

--EXCEPT gives the uncommon elements from first tables. 
--the no of colomns shall be same
--the datatype shall be same
--It gives the data that is 1. unique 2. not present in second table
select city from employees
except select city from customers

select city from customers
except select city from employees

SELECT contactname,city,country FROM customers
UNION ALL 
SELECT contactname,city,country FROM suppliers
