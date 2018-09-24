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






