CREATE TABLE employees
(
	/*example1 - email VARCHAR(255) PRIMARY KEY;*/
	/*example2 - hash VARCHAR (255) NOT NULL;*/
	
	employeeid	INT, NOT NULL PRIMARY KEY, FOREIGN KEY REFERENCES sales(employeeid), FOREIGN KEY REFERENCES department(employeeid),
	empName		VARCHAR(40), FOREIGN KEY REFERENCES department(empName),
	empDep		VARCHAR(40), FOREIGN KEY REFERENCES department(empDep),
	empAddr		VARCHAR(40),
	empPhone	VARCHAR(40)
);


CREATE TABLE department
(
	empDep		VARCHAR(40), NOT NULL PRIMARY KEY, FOREIGN KEY REFERENCES employees(empDep,)
	employeeid	INT, FOREIGN KEY REFERENCES employees(employeeid), FOREIGN KEY REFERENCES sales(employeeid),
	empName		VARCHAR(40), FOREIGN KEY REFERENCES employees(empName),
	tasks		VARCHAR(40),
	PPS		INT, FOREIGN KEY REFERENCES sales(PPS)
);


CREATE TABLE sales
(
	employeeid	INT, NOT NULL PRIMARY KEY, FOREIGN KEY REFERENCES employees(employeeid), FOREIGN KEY REFERENCES department(employeeid),
	sales_total	INT, FOREIGN KEY REFERENCES department(empDep),
	PPS		INT,
	commission	INT
);



INSERT INTO employees
VALUES (1, AkilahT, IT, 123 Park Ave., 111-222-4444);

INSERT INTO employees   
VALUES (2, DeniceC, Communications, 124 Montvile St., 111-222-3333);

INSERT INTO employees   
VALUES (3, NathanB, CybSec, 143 Love Lane., 222-222-2222);

INSERT INTO employees
VALUES (4, EthanJ, CompFor, 666 Hi Road, 123-333-0987);



INSERT INTO department
VALUES (IT, 1, AkilatT, Technical Solutions Operations, 100);

INSERT INTO department
VALUES (Communications, 2, DeniceT, Telecommunications and Media, 95);

INSERT INTO department
VALUES (CybSec, 3, NathanB, Cyber Security Technician, 90);

INSERT INTO department
VALUES (CompFor, 4, EthanJ, Computer Forensics and Digital Crime, 70);


INSERT INTO sales
VALUES (1, 10, 100, " ");

INSERT INTO sales
VALUES (2, 9, 95, " ");

INSERT INTO sales
VALUES (3, 8, 90, " ");

INSERT INTO sales
VALUES (4, 7, 70, " ");




ALTER ROLE manager WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;


