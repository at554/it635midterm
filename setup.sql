CREATE TABLE employees
(
	/*example1 - email VARCHAR(255) PRIMARY KEY;*/
	/*example2 - hash VARCHAR (255) NOT NULL;*/
	
	employeeid	INT, NOT NULL PRIMARY KEY, FOREIGN KEY references sales, FOREIGN KEY references department,
	empName		VARCHAR(40), FOREIGN KEY references department,
	empDep		VARCHAR(40), FOREIGN KEY references department,
	empAddr		VARCHAR(40),
	empPhone	VARCHAR(40)
);


CREATE TABLE department
(
	empDep		VARCAR(40), NOT NULL PRIMARY KEY,
	employeeid	INT, FOREIGN KEY references employees, FOREIGN KEY references sales,
	empName		VARCHAR(40), FOREIGN KEY references employees,
	tasks		VARCHAR(40),
	PPS		INT, FOREIGN KEY references sales
);


CREATE TABLE sales
(
	employeeid	INT, NOT NULL PRIMARY KEY, FOREIGN KEY references employees, FOREIGN KEY references department,
	sales_total	INT, FOREEIGN KEY references department,
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


/*Insert terminal form to inputted data somewhere here*/


/*ALTER ROLE manager WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS;*/

/*SELECT statement goes here*/
