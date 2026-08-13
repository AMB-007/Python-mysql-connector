"""

pip install mysql-connector-python

"""

import mysql.connector
connector = mysql.connector.connect(
    host="localhost",
    user="root",
    password="abc123",
    database="sample"
)

if connector.is_connected():
    print("database connected")

cursor = connector.cursor()
# cursor.execute("select * from employee")
# rows = cursor.fetchall()
# for i in rows:
#     print(i)


cursor.execute("select country, count(*) from employee group by country")
rows = cursor.fetchall()
for i in rows:
    print(i)

# cursor.execute("select proffession,count(*) from employee group by proffession")
# rows = cursor.fetchall()
# for i in rows:
#     print(i)

cursor.close()
connector.close()


