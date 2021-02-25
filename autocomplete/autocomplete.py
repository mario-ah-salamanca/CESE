import json

import cgi

import mysql.connector

form = cgi.FieldStorage()

input = form.getvalue("inputcomplete")


mydb = mysql.connector.connect(
  host="localhost",
  user="root",
  password="pass",
  database="CESE"
)

mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM SUBSTANCES")

myresponse = mycursor.fetchall()

result = []

for resp in myresponse:
    if resp.find(input) != -1:
      result.append(resp)

return json.dumps(result)