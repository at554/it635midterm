/*setup2.sql*/

CREATE DATABASE consultants OWNER manager2;


ALTER ROLE manager2 WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;


CREATE TABLE employees
(
	employeeid	INT, UNIQUE NOT NULL, PRIMARY KEY, FOREIGN KEY REFERENCES department(employeeid),
	empName		VARCHAR(40),
	empDep		VARCHAR(40)
);



CREATE TABLE department
(
	depID		INT PRIMARY KEY, FOREIGN KEY REFERENCES sales(depID),
	empDep	VARCHAR(40),
	employeeid	INT, FOREIGN KEY REFERENCES employees(employeeid)
);



CREATE TABLE sales
(
	depID		INT, UNIQUE NOT NULL, PRIMARY KEY, FOREIGN KEY REFERENCES department(depID),
	PPS		INT
);



INSERT INTO employees
VALUES (1, AkilahT, IT);

INSERT INTO employees   
VALUES (2, DeniceC, Communications);

INSERT INTO employees   
VALUES (3, NathanB, CybSec);

INSERT INTO employees
VALUES (4, EthanJ, CompFor);



INSERT INTO department
VALUES (11, IT, 1);

INSERT INTO department
VALUES (22, Communications, 2);

INSERT INTO department
VALUES (33, CybSec, 3);

INSERT INTO department
VALUES (44, CompFor, 4);



INSERT INTO sales
VALUES (11, 100);

INSERT INTO sales
VALUES (22, 95);

INSERT INTO sales
VALUES (33, 90);

INSERT INTO sales
VALUES (44, 85);





