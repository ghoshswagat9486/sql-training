use   sgmysqldb;

-- Examples of alter/rename for table
DROP TABLE if exists  `company`;
CREATE TABLE `company` (
  `COMPANY_ID` varchar(6) NOT NULL DEFAULT '',
  `COMPANY_NAME` varchar(25) DEFAULT NULL,
  `COMPANY_CITY` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`COMPANY_ID`)
);
alter table company
add company_type char;
rename table company to companies;
alter table  companies rename to company;



-- Altering a column in a table 
alter table company
rename column company_type  to company_typ;

-- drop column from a table
alter table company
drop company_typ ;

-- modify column in a table
alter table company
modify column company_city varchar(20);

-- Example of truncate table
truncate table agents;



-- 
drop table if exists employee;
create table employee(
EMPL_NO int,
EMPLOYEE_NAME VARCHAR(100),
SSN VARCHAR(50),
START_DATE DATE,
EMAIL VARCHAR(100)
);


-- describe a database object
describe employee;



-- examples of insert
insert into employee(empl_no,employee_name,ssn,start_date,email) 
values(4,'ABC',' 345-45-7787 ','2023-01-01',''); 

insert into employee(empl_no,employee_name,ssn,email) 
values(1,'ABC','345-45-7787',''); 
-- example where data being inserted is more than dataytype length
insert into employee(empl_no,employee_name,ssn,email) 
values(3,'ABC','34545878990',''); 

-- example of update to table
select * from employee;
update employee set start_date=current_date where start_date is null;
select * from employee;

-- example of deletion
delete from sgmysqldb.employee
where length(ssn)<11;




