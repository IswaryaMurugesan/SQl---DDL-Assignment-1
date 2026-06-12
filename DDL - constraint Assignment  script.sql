-- Create a database
Create database Employee_Database;
use Employee_Database ;

-- Department Table
CREATE TABLE Departments (
    Department_ID  int PRIMARY KEY ,
    Department_name Varchar ( 100)
);

-- Location Table 
Create table Location (
	location_id int primary key auto_increment,
    location_name Varchar(30) 
    ) ; 
    
-- Employees table 
Create table Employees (
	employee_id int primary key unique,
    Employee_name varchar(50) not null,
    Gender enum ('M','F') not null ,
    age int check(age>1=8),
	Hire_date date default(current_date()),
    Designation varchar(100),
	Salary decimal(10,2),
	department_id int ,
    location_id int ,
    
    foreign key (department_id) references Departments(department_ID)
	On delete cascade
	On update cascade ,
    
    foreign Key (location_id) references location(location_id)
    On delete cascade
    On update cascade
    );
    
    -- alter department table 
alter table departments
modify department_ID int unique ;     

alter table departments
modify department_name Varchar(100) Not null ;

alter table departments
modify department_name Varchar(100) Not null unique ;

-- auto correct done in location table 

-- alter table 

alter table location
Modify Location_name varchar(30) not null unique ;

