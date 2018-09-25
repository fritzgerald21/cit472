--Fritz Beimesch
--HW 3
--9/25/2018


CREATE TABLE EMPLOYEE 
(
  EMPLOYEE_NAME VARCHAR2(100) NOT NULL 
, STREET VARCHAR2(200) 
, CITY VARCHAR2(100) 
, CONSTRAINT EMPLOYEE_PK PRIMARY KEY 
  (
    EMPLOYEE_NAME 
  ) 
);


CREATE TABLE WORKS 
(
  EMPLOYEE_NAME VARCHAR2(100) NOT NULL 
, COMPANY_NAME VARCHAR2(200) 
, SALARY NUMBER(15) 
, CONSTRAINT WORKS_PK PRIMARY KEY 
  (
    EMPLOYEE_NAME 
  ) 
);


CREATE TABLE COMPANY 
(
  COMPANY_NAME VARCHAR2(200) NOT NULL 
, CITY VARCHAR2(100) 
, CONSTRAINT COMPANY_PK PRIMARY KEY 
  (
    COMPANY_NAME 
  )
);


CREATE TABLE MANAGES 
(
  EMPLOYEE_NAME VARCHAR2(100) NOT NULL 
, MANAGER_NAME VARCHAR2(100) 
, CONSTRAINT MANAGES_PK PRIMARY KEY 
  (
    EMPLOYEE_NAME 
  )
);

insert into Employee values ('William Gates III',	'University St',	'Redmond');
insert into Employee values ('Warren Buffett',	'Alaskan Way',	'Omaha');
insert into Employee values ('Lakshmi Mittal',	'1st Ave',	'London');
insert into Employee values ('Carlos Slim Helu',	'1st Ave',	'London');
insert into Employee values ('Prince Gatlin',	'2nd Ave',	'Birmingham');
insert into Employee values ('Ingvar Kamprad',	'University Ave',	'Oslo');
insert into Employee values ('Paul Allen',	'First St',	'Seattle');
insert into Employee values ('Karl Albrecht',	'Westlake Ave',	'London');
insert into Employee values ('Lawrence Ellison',	'20717 International Blvd.',	'Silicon Valley');
insert into Employee values ('Mark Zuckerberg',	'First Avenue',	'Silicon Valley');
insert into Employee values ('Sheryl Sandberg',	'Second Avenue',	'Silicon Valley');
insert into Employee values ('Dave Wehner',	'Third Avenue',	'Silicon Valley');
insert into Employee values ('Mike Schroepfer',	'Fourth Avenue',	'Silicon Valley');
insert into Employee values ('Chris Cox',	'Sixth Avenue',	'Silicon Valley');
insert into Employee values ('Kenneth Thomson',	'20717 International Blvd.',	'Silicon Valley');
insert into Employee values ('Liliane Bettencourt',	'21 Rue de Miroir',	'Lyon');
insert into Employee values ('Bernard Arnault',	'18 Avenue de Suffren',	'Paris');
insert into Employee values ('Michael Dell',	'4533 South',	'Austin');
insert into Employee values ('Sheldon Adelson',	'4533 South',	'Austin');
insert into Employee values ('Theo Albrecht',	'Westlake Ave',	'London');




insert into Works values ('William Gates III',	'Microsoft',	1400000);
insert into Works values ('Warren Buffett',	'Exxon Mobil',	230000);
insert into Works values ('Lakshmi Mittal',	'General Electric',	60000);
insert into Works values ('Carlos Slim Helu',	'General Electric',	400000);
insert into Works values ('Prince Gatlin',	'General Electric',	50000);
insert into Works values ('Ingvar Kamprad',	'BP',	80000);
insert into Works values ('Paul Allen',	'Microsoft',	300000);
insert into Works values ('Karl Albrecht',	'BP',	100000);
insert into Works values ('Lawrence Ellison',	'Oracle',	98000);
insert into Works values ('Mark Zuckerberg',	'Facebook',	650000);
insert into Works values ('Sheryl Sandberg',	'Facebook',	450000);
insert into Works values ('Dave Wehner',	'Facebook',	120000);
insert into Works values ('Mike Schroepfer',	'Facebook',	94000);
insert into Works values ('Chris Cox',	'Facebook',	300000);
insert into Works values ('Kenneth Thomson',	'Oracle',	120000);
insert into Works values ('Liliane Bettencourt',	'Chanel',	500000);
insert into Works values ('Bernard Arnault',	'Chanel',	130000);
insert into Works values ('Michael Dell',	'Dell',	900000);
insert into Works values ('Sheldon Adelson',	'Dell',	80000);
insert into Works values ('Theo Albrecht',	'BP',	56000);



insert into Company values ('Microsoft',	'Redmond');
insert into Company values ('Exxon Mobil',	'Omaha');
insert into Company values ('General Electric',	'London');
insert into Company values ('BP',	'London');
insert into Company values ('Oracle',	'Silicon Valley');
insert into Company values ('Facebook',	'Silicon Valley');
insert into Company values ('Chanel',	'Paris');
insert into Company values ('Dell',	'Austin');




insert into Manages values ('Paul Allen',	'William Gates III');
insert into Manages values ('Carlos Slim Helu',	'Lakshmi Mittal');
insert into Manages values ('Karl Albrecht',	'Ingvar Kamprad');
insert into Manages values ('Theo Albrecht',	'Ingvar Kamprad');
insert into Manages values ('Kenneth Thomson',	'Lawrence Ellison');
insert into Manages values ('Sheryl Sandberg',	'Mark Zuckerberg');
insert into Manages values ('Dave Wehner',	'Mark Zuckerberg');
insert into Manages values ('Mike Schroepfer',	'Sheryl Sandberg');
insert into Manages values ('Chris Cox',	'Sheryl Sandberg');
insert into Manages values ('Bernard Arnault',	'Liliane Bettencourt');
insert into Manages values ('Sheldon Adelson',	'Michael Dell');


--1
select Employee_name
from Works
where Company_name not in ('Microsoft', 'Facebook')
;

/*
Result:
Warren Buffett
Lakshmi Mittal
Carlos Slim Helu
Prince Gatlin
Ingvar Kamprad
Karl Albrecht
Lawrence Ellison
Kenneth Thomson
Liliane Bettencourt
Bernard Arnault
Michael Dell
Sheldon Adelson
Theo Albrecht
*/



--2
select Employee.City
from Employee
inner join Works on Works.Employee_name= Employee.Employee_name
where Works.Salary <50000 or Works.Salary>400000
;

/*
Result:
Redmond
Silicon Valley
Silicon Valley
Lyon
Austin
*/


--3
select
  Company_name,
  count(Employee_name)
  
  from Works
  group by Company_name
  order by Company_name asc
;

/*
Result:
BP	3
Chanel	2
Dell	2
Exxon Mobil	1
Facebook	5
General Electric	3
Microsoft	2
Oracle	2
*/

--4
select
  Managers.Employee_name
  
  from Manages
  inner join Works Managers on Manages.Manager_name= Managers.Employee_name
  inner join Works emp on emp.Employee_name= Manages.Employee_name
  where Managers.Salary<emp.Salary
;

/*
Result:
Lakshmi Mittal
Ingvar Kamprad
Lawrence Ellison
*/


--5

select
  Manages.Manager_name,
  avg(emp.Salary)
  
  from Manages
  inner join Works emp on emp.Employee_name= Manages.Employee_name
  group by Manages.Manager_name
;

/*
Result:
Lakshmi Mittal	400000
Mark Zuckerberg	285000
William Gates III	300000
Ingvar Kamprad	78000
Lawrence Ellison	120000
Michael Dell	80000
Sheryl Sandberg	197000
Liliane Bettencourt	130000
*/


--6
select
  *
  from Manages
  where REGEXP_LIKE(Employee_name, '(a|e|E|A){3}')
;


--7
select
  Employee_name,
  TRIM(REGEXP_REPLACE(Street, '[0-9]',''))
  from Employee
;
  
/*
Result:
William Gates III	University St
Warren Buffett	Alaskan Way
Lakshmi Mittal	st Ave
Carlos Slim Helu	st Ave
Prince Gatlin	nd Ave
Ingvar Kamprad	University Ave
Paul Allen	First St
Karl Albrecht	Westlake Ave
Lawrence Ellison	International Blvd.
Mark Zuckerberg	First Avenue
Sheryl Sandberg	Second Avenue
Dave Wehner	Third Avenue
Mike Schroepfer	Fourth Avenue
Chris Cox	Sixth Avenue
Kenneth Thomson	International Blvd.
Liliane Bettencourt	Rue de Miroir
Bernard Arnault	Avenue de Suffren
Michael Dell	South
Sheldon Adelson	South
Theo Albrecht	Westlake Ave
*/


--8
update Works set Salary= case when Salary<100000 then Salary*1.1 else Salary*1.05 end
where Company_name= 'Facebook' 
;

--9
update Works set Salary= Salary*1.1
where Works.Employee_name in (select distinct Manager_name from Manages)
;

--10
delete from Employee
where Employee_name in ('Liliane Bettencourt', 'Bernard Arnault')
;
delete from Works
where Company_name= 'Chanel'
;
delete from Company
where Company_name= 'Chanel'
;
delete from Manages
where Manager_name in ('Liliane Bettencourt', 'Bernard Arnault')
;