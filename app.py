from flask import Flask, request, Response
import json
import mariadb
import dbcreds

app = Flask(__name__)
conn = None
cursor = None


try:
    conn=mariadb.connect(user=dbcreds.user,
                        password=dbcreds.password,
                        host=dbcreds.host,
                        port=dbcreds.port,
                        database=dbcreds.database)
    cursor = conn.cursor()


    @app.route('/login', methods=['POST'])
    def login():
        print("Please enter your username")
        username = input()
        print("Enter password")
        password = input()
        if request.method == 'POST' and request.get('alias') == username and request.get('password') == password:
            data = request.json
            print(data)
            query = ("SELECT * From hackers WHERE alias=%s AND password=%s", (username, password))
            resp = {
                "alias" : username,
                "password" : password
                }
            cursor.execute(query(username, password)).fetchall()
            cursor.commit()
            print(data)
        else:
            print("this is a login error")
        return Response(json.dumps(resp),
                        mimetype="application.json",
                        status=200)
        
    print("connection successful")

    login()

    
    def user_options():
        print("select from the following options:")
        print("1. Enter new exploit!")
        print("2. View past expoits")
        print("3. View the exploits of others")
        print("4. Exit")        
    user_options()
except:
    print("error")
finally:
    if(cursor != None):
        cursor.close()
        print("The curser is closed")
    else:
        print("Curser is not open")    
    if (conn != None):
        conn.rollback()
        conn.close()
        print("Connection terminated")
    else:
        print("All connections are closed")