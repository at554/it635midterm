#comOutput2.py

import psycopg2

conn = psycopg2.connect(host="localhost", port=5432, database="consultants", user="manager2", password="postgres")

cur = conn.cursor()


cur.execute("DROP TABLE IF EXISTS employees")
cur.execute("DROP TABLE IF EXISTS department")


sql = '''CREATE DATABASE consultants'''


sql2 ='''CREATE TABLE employees
(
	employeeid	INT, UNIQUE NOT NULL, PRIMARY KEY, FOREIGN KEY REFERENCES department(employeeid),
	empName		VARCHAR(40),
	empDep		VARCHAR(40)
);


CREATE TABLE department
(
	depID	INT PRIMARY KEY, FOREIGN KEY REFERENCES sales(depID),
	empDep	VARCHAR(40),
	employeeid	INT, FOREIGN KEY REFERENCES employees(employeeid)
);


CREATE TABLE sales
(
	depID	INT, UNIQUE NOT NULL, PRIMARY KEY, FOREIGN KEY REFERENCES department(depID),
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

'''


cur.execute(sql2)
print("Database created successfully........")



while True:

    print("Connected to database successfully.")

    print("Please enter Employee ID:")
    idtemp = int(input())
    print("Please enter your number of sales for the month:")
    salestemp = int(input())

    #employeeid = idtemp;

    tableJoined = cur.execute('''SELECT employees.employeeid, employees.empDep, department.depID, sales.PPS FROM employees JOIN department ON employees.employeeid = department.employeeid JOIN sales on sales.depID = department.depID''')


    query_results = cur.fetchall()
	
	
    cur.execute("SELECT PPS FROM tableJoined WHERE idtemp = employeeid")

    cur.execute(commissions = PPS * salestemp)

    print("Your total commissions for this month is: $ {commissions}")
    conn.commit()


    print ("Operation successful!")


    #test execution

    #cur.execute("""SELECT * FROM employees""")
    #query_results = cur.fetchall()
    #print(query_results)

    #test done*/







cur.close()
conn.close()
