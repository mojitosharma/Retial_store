from pytz import country_timezones
from pickle import FALSE, NONE
from tkinter import E, END
import mysql.connector as c
from os import execlpe, system, name
from time import sleep
from datetime import datetime

user_n = 0
user_passwd = ""

def find_user_id(choice):
    checker = None                                      #check in the user list if the data is valid or not  
    try:
        sleep(1)
        checker = c.connect(
            host='localhost', 
            user = 'admin_user', 
            password = 'admin_user',
            database = 'retail_store'
        )
        checker_list = checker.cursor(buffered=True)
        if choice == 1:
            checker_list.execute("select * from customer_login where user_id = "+str(user_n))
            for x in checker_list:
                c_id = x[1]
                return c_id
        elif choice == 2:
            checker_list.execute("select * from employee_login where user_id = "+str(user_n))
            for x in checker_list:
                e_id = x[1]
                return e_id
        elif choice == 3:
            checker_list.execute("select * from supplier_login where user_id = "+str(user_n))
            for x in checker_list:
                s_id = x[1]
                return s_id
    except:
        print("Something Went Wrong :(")
        print("Please wait we are working on It")
        sleep(2)
        exit()
    return -1

def clear():            # function to clear command prompt
    pass
    # if name == 'nt':
    #     _ = system('cls')
    # else:
    #     _ = system('clear')

def check_connection(user_n, user_passwd, choice):      #check if we can establish a connection 
    checker = None                                      #check in the user list if the data is valid or not  
    try:
        checker = c.connect(
            host='localhost', 
            user = 'admin_user', 
            password = 'admin_user',
            database = 'retail_store'
        )
        checker_list = checker.cursor(buffered=True)
        checker_list.execute("select user_id, password, type from user")
        user_typer = {1:"customer",2:"employee",3:"supplier"}
        
        for x in checker_list:
            if(x[0] == user_n and x[1] == user_passwd and x[2] == user_typer[choice]):
                return 1
    except:
        print("Something Went Wrong :(")
        print("Please wait we are working on It")
        sleep(2)
        exit()

    return -1

def create_connection(host_t, user_n, user_passwd, choice):             # function to establish connection
    mydb = None
    try:
        mydb  = c.connect(host = host_t, 
                user= user_n, 
                passwd = user_passwd,
                database="retail_store")
        
        if mydb.is_connected() == FALSE:
            print("unable to coonect to database")
            END
    except Exception as e:
        print(e)
        print("Invalid User Id or Password!!")
    return mydb

def get_connection(choice):
    global user_n
    host_t = 'localhost'
    for count in range(0,3):
        sleep(0.25)
        clear()
        print("-----------------------------------------------------------------------")
        print("                                Sign In")
        print("-----------------------------------------------------------------------")

        try:
            user_n = int(input("User Id: ")) 
            user_passwd = str(input("Password: "))
            # user_n = 10050
            # user_passwd = "sDXYx6tygrA9"
            
        except:
            print("Something Went Wrong :(")
            exit()
         
        temp = check_connection(user_n, user_passwd, choice)
        if temp != -1:
            connection = create_connection(host_t, str(user_n), user_passwd, choice)
            return connection
        elif count == 2:
            print("3 Invalid-Input-Response!! Try Again Later")
            sleep(2)
            exit()
        else:
            print("Invalid Input try again!!")
            try:
                c = int(input("0: Go Back, 1: Retry: "))
            except:
                print("Something Went Wrong :(")
            if c == 0:
                break
    return None

def showSignin():
    sleep(0.25)
    clear()
    cont = True  
    while cont:  
        clear()
        print("-----------------------------------------------------------------------")
        print("                                Login")
        print("-----------------------------------------------------------------------")
        print("1: User Login")                  # 10051   WvMb1T
        print("2: Employee Login")
        print("3: Supplier Login")
        print("0: Exit")
        try:
            choice = int(input("Enter Login Choice: "))
        except:
            print("Something Went Wrong :(")
            exit()
        if choice == 0 or choice == 2 or choice == 1 or choice == 3:
            return choice
        else:
            print("Invalid Choice !! Try Again")
            sleep(0.5)
    return 0
