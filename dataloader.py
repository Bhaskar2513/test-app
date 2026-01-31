import mysql.connector
import csv

# Connect to database
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="1234",
    database="june7th"
)

cursor = conn.cursor()

# Get user input


# SQL query (parameterized → safe from SQL injection)
sql = """INSERT IGNORE INTO user (id, name, age,city,gmail) VALUES (%s, %s, %s,%s,%s)"""
with open("demo/data1.csv", newline='', encoding="utf-8") as file:
    reader = csv.DictReader(file)
    
    for row in reader:
        values = (
            int(row["id"]),
            row["name"],
            int(row["age"]),
            row["city"],
            row["gmail"]
        )
        print(sql % values)
        cursor.execute(sql, values)
conn.commit()

conn.close()
