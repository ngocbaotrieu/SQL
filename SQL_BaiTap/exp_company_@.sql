-- show databases
-- use company
-- show tables
-- CREATE TABLE employee (
--     fname varchar(20) NOT NULL,
--     minit varchar(20) NULL,
--     lname varchar(30) NOT NULL,
--     ssn int Primary Key NOT NULL,
--     bdate date NOT NULL,
--     address varchar(255) NULL,
--     sex varchar(1) NOT NULL,
--     salary decimal(15,2) NOT NULL,
--     superssn int NULL,
--     dno int NULL,
--     CONSTRAINT sex check  (sex ='F'or sex = 'M'),
--     constraint ssn_fk foreign key employee(superssn) references employee(ssn)
-- );

-- CREATE TABLE department (
--     dname varchar(50) NOT NULL,
--     dnumber int  NOT NULL primary key,
--     mgrssn int NOT NULL,
--     mgrstartdate date NULL);
-- show tables
-- describe employee
-- ALTER table employee add constraint dno_fk foreign key employee(dno) references department(dnumber)

--  CREATE TABLE dept_locations (
-- dnumber int NOT NULL,
-- dlocation varchar(255) not NULL,
-- primary key (dnumber, dlocation));

-- ALTER table department add constraint mgrssn_fk foreign key department (mgrssn) references employee(ssn);
-- ALTER table dept_locations add constraint dnumber_fk foreign key dept_locations (dnumber) references department(dnumber);

-- CREATE TABLE project (
-- pname varchar(50) not NULL,
-- pnumber int NOT NULL primary key,
-- plocation varchar(255) NULL,
-- dnum int NOT NULL);

-- ALTER table project add constraint pnumber_fk foreign key project(dnum) references department(dnumber);

-- CREATE TABLE works_on (
-- essn int NOT NULL,
-- pno int NOT NULL,
-- hours decimal(3,1) NULL,
-- primary key (essn,pno));

-- ALTER table works_on add CONSTRAINT esn_fk foreign key works_on(essn) references employee(ssn);
-- ALTER table works_on add CONSTRAINT pno_fk foreign key works_on(pno) references project(pnumber);

-- show tables

-- insert into EMPLOYEE (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
-- values  ('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000.00, '333445555', 5),
--         ('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX', 'M', 40000.00, '888665555', 5),
--         ('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000.00, '987654321', 4),
--         ('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000.00, '888665555', 4),
--         ('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000.00, '333445555', 5),
--         ('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000.00, '333445555', 5),
--         ('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000.00, '987654321', 4),
--         ('James', 'E', 'Borg', '888665555', '1937-11-10', '450 Stone, Houston, TX', 'M', 55000.00, null, 1);

-- SET foreign_key_checks = 0;

-- insert into DEPARTMENT (Dname, Dnumber, mgrssn, mgrstartdate)
-- values  ('Headquarters', 1, '888665555', '1981-06-19'),
--         ('Administration', 4, '987654321', '1995-01-01'),
--         ('Research', 5, '333445555', '1988-05-22');

-- SET foreign_key_checks = 0;

-- insert into EMPLOYEE (fname, minit, lname, ssn, bdate, address, sex, salary, superssn, dno)
-- values  ('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', 30000.00, '333445555', 5),
--         ('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX', 'M', 40000.00, '888665555', 5),
--         ('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, TX', 'F', 25000.00, '987654321', 4),
--         ('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', 43000.00, '888665555', 4),
--         ('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', 38000.00, '333445555', 5),
--         ('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', 25000.00, '333445555', 5),
--         ('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas, Houston, TX', 'M', 25000.00, '987654321', 4),
--         ('James', 'E', 'Borg', '888665555', '1937-11-10', '450 Stone, Houston, TX', 'M', 55000.00, null, 1);

-- SET foreign_key_checks = 1;

-- insert into PROJECT (pname, pnumber, plocation, dnum)
-- values  ('ProductX', 1, 'Bellaire', 5),
--         ('ProductY', 2, 'Sugarland', 5),
--         ('ProductZ', 3, 'Houston', 5),
--         ('Computerization', 10, 'Stafford', 4),
--         ('Reorganization', 20, 'Houston', 1),
--         ('Newbenefits', 30, 'Stafford', 4);

-- insert into DEPT_LOCATIONS (dnumber, dlocation)
-- values  (1, 'Houston'),
--         (4, 'Stratford'),
--         (5, 'Bellaire'),
--         (5, 'Sugarland'),
--         (5, 'Houston');

-- insert into WORKS_ON (essn, pno, hours)
-- values  ('123456789', 1, 32.5),
--         ('123456789', 2, 7.5),
--         ('666884444', 3, 40.0),
--         ('453453453', 1, 20.0),
--         ('453453453', 2, 20.0),
--         ('333445555', 2, 10.0),
--         ('333445555', 3, 10.0),
--         ('333445555', 10, 10.0),
--         ('333445555', 20, 10.0),
--         ('999887777', 30, 30.0),
--         ('999887777', 10, 10.0),
--         ('987987987', 30, 5.0),
--         ('987987987', 10, 35.0),
--         ('987654321', 30, 20.0),
--         ('987654321', 20, 15.0),
--         ('888665555', 20, null);

-- SET foreign_key_checks = 1;

-- SELECT * FROM employee 
-- SELECT E.fname AS E_fname, E.lname AS E_lname, S.fname AS S_fname, S.lname AS S_lname, E.superssn
-- FROM employee AS E, employee AS S
-- WHERE E.superssn = S.ssn

(SELECT pnumber
FROM project,employee, department
WHERE lname='Wallace' and dnum=dnumber and mgrssn=ssn)
UNION
(SELECT pnumber
FROM employee, works_on, project
WHERE lname='Wallace'AND essn=ssn AND pno=pnumber);

SELECT ssn, pno, bdate FROM works_on, employee
WHERE essn=ssn AND lname='Wallace';

-- SELECT * FROM employee
--  SELECT * FROM department

SELECT * FROM employee
WHERE lname LIKE '%e';
SELECT * FROM employee
WHERE lname LIKE '__ng';
SELECT lname, fname, ssn FROM employee
WHERE ssn like '888%';
SELECT * FROM project;

SELECT fname, lname, salary*1.1 AS INCREASE_SAL
FROM employee, project
WHERE dnum=dno AND pname='ProductY';

SELECT fname, lname, salary*1.1 AS INCREASE_SAL
FROM employee, project, works_on
WHERE essn=ssn AND pno=pnumber AND pname='ProductY';


SELECT essn, lname, fname FROM works_on, employee
WHERE pno IN (2,3) AND essn=ssn;

SELECT fname, lname, address
FROM employee, department
WHERE dno=dnumber AND dname='research';

SELECT fname, lname, address
FROM employee JOIN department ON dno=dnumber
where dname='research';
-- SELECT fname, lname, address
-- FROM (employee NATURAL JOIN 
-- (department AS dept(dname, dno, mssn,msdate)))
-- WHERE dname='research'

SELECT E.fname, E.lname, S.fname, S.lname
FROM employee AS E, employee AS S
WHERE E.superssn=S.ssn;

SELECT E.fname, E.lname, S.fname, S.lname
FROM employee AS E LEFT OUTER JOIN employee AS S ON S.ssn=E.superssn;

SELECT pnumber, dnum, fname, lname, address, bdate
FROM employee, department, project
WHERE plocation='stafford' AND dnum=dnumber AND mgrssn=ssn;
SELECT pnumber, dnum, fname, lname, address, bdate
FROM (project JOIN department ON dnum=dnumber) JOIN employee ON mgrssn=ssn
WHERE plocation='stafford';

SELECT max(salary), min(salary), avg(salary)
FROM employee
WHERE dno=5;
SELECT count(*)
FROM employee;
SELECT count(*) 
FROM employee, department
WHERE dname='research' AND dno=dnumber;

SELECT dno, count(*), avg(salary), max(salary)
FROM employee
GROUP BY dno;
SELECT pnumber, pname, count(*)
FROM project, works_on
WHERE pno=pnumber
GROUP BY pnumber
HAVING count(*)>2
ORDER BY pnumber;


SELECT fname, lname,pname, dname
FROM department, employee, project
WHERE dno=dnumber AND dnumber=dnum
ORDER BY dname, lname desc;

--
SELECT * -- fname, lname,pname, dname
FROM department LEFT JOIN project
ON dno=dnumber AND dnumber=dnum
where true
ORDER BY dname, lname desc;

SELECT ssn, fname, dno FROM employee WHERE fname = 'Jennifer';
SELECT * FROM department WHERE dnumber = 4;
SELECT * FROM works_on WHERE essn = 987654321;
SELECT * FROM project WHERE pnumber IN (20,30);
SELECT * FROM project WHERE pname IN ('Computerization');


SELECT fname, lname, pname, dname
FROM works_on, employee, project, department
WHERE essn=ssn AND pno=pnumber AND dno=dnumber
ORDER BY dname, lname asc;

CREATE table depts_info
(dept_name varchar(20),
no_of_emps int,
total_sal int);
INSERT INTO depts_info(dept_name, no_of_emps, total_sal)
SELECT dname, count(*), sum(salary)
FROM employee, department
WHERE dno=dnumber
GROUP BY dname

