import psycopg2

conn = psycopg2.connect(host="localhost", port=5432, database="consultants", user="manager2", password="postgres")

cur = conn.cursor()

while True:

    print("Connected to database successfully.")

    print("Please enter Employee ID:")
    idtemp = int(input())
    print("Please enter your number of sales for the month:")
    salestemp = int(input())
    print("Please enter Price Per Sale (PPS):")
    PPS = int(input())

    cur.execute("""SELECT * FROM employees""")
    query_results = cur.fetchall()
    print(query_results)

    cur.execute("SELECT employeeid, empName, empAddr, empPhone FROM employees")
    query2 = cur.fetchall()
    for row in query2:
        print ("Employee ID: ", row[0])
        print ("Employee Name: ", row[1])
        print ("Employee Address: ", row[2])
        print ("Employee Phone #: ", row[3], "\n")

    print ("Operation successful!")


    commissions = cur.fetchone()[0]
    print("Your total commissions for this month is: $ {commissions}")
    conn.commit()

cur.close()
conn.close()
