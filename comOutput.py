import psycopg2

conn = psycopg2.connect(host="localhost", port=5432, database="consultants", user="manager2", password="postgres")

cur = conn.cursor()

while True:

    print("Connected to database successfully.")

    print("Please enter Employee ID:")
    idtemp = int(input())
    print("Please enter your number of sales for the month:")
    salestemp = int(input())





    /*test execution*/

    cur.execute("""SELECT * FROM employees""")
    query_results = cur.fetchall()
    print(query_results)

    /*test done*/




    cur.execute("SELECT employeeid FROM employees WHERE (idtemp = employees(employeeid) AND idtemp = department(employeeid)) AND (department(empDep) = sales(empDep));)

    cur.execute("SELECT PPS from sales WHERE idtemp = employeeid";)

    cur.execute(commissions = PPS * salestemp)


    commissions = cur.fetchone()[0]
    print("Your total commissions for this month is: $ {commissions}")
    conn.commit()

    print ("Operation successful!")

cur.close()
conn.close()
