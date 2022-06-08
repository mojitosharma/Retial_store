from multiprocessing import connection
from pytz import country_timezones
from pickle import FALSE, NONE
from tkinter import E, END
import mysql.connector as c
from os import execlpe, system, name
from time import sleep
from new_user import *



def clear():            # function to clear command prompt
    pass
    # if name == 'nt':
    #     _ = system('cls')
    # else:
    #     _ = system('clear')

def show_signup():
    sleep(0.25)
    clear()
    cont = True  
    while cont:  
        clear()
        print("-----------------------------------------------------------------------")
        print("                                Sign Up")
        print("-----------------------------------------------------------------------")
        print("1: Add new User")
        print("0: Exit")
        try:
            choice = int(input("Enter Choice: "))
        except:
            print("Something Went Wrong :(")
            exit()
        if choice == 0 or choice == 1:
            return choice
        else:
            print("Invalid Choice !! Try Again")
            sleep(0.5)
    return 0


def add_customer():
    sleep(0.25)
    clear()
    connection = None
    try:
        connection = c.connect(
            host='localhost', 
            user = 'admin_user', 
            password = 'admin_user',
            database = 'retail_store'
        )
    except:
        print("Something Went Wrong :(")
        print("Please wait we are working on It")
        sleep(2)
        exit()

    f=input("enter first name: ")
    m=input("enter middle name: ")
    la=input("enter last name: ")
    gen=""
    while gen =='M' or gen =='F':
        gen=input("insert the gender of the Customer(M or F): ")
        print(len(gen))
    date=input("enter date of birth of Customer(yyyy-mm-dd): ")
    email=input("enter the email of Customer: ")
    phone=input("enter the phone number of Customer: ")

    cur=connection.cursor(buffered=True)

    print("Enter Address: ")
    mainline=input("Enter main line: ")
    city=input("Enter city: ")
    state=input("Enter state: ")
    country=input("Enter country: ")
    postalcode=int(input("Enter postal code: "))
    landmark=input("Enter landmark(enter just space if no landmark): ")
    q1="insert into address(main_line, city, state, country, postal_code, landmark) VALUES ('"+mainline+"','"+city+"','"+state+"','"+country+"','"+str(postalcode)+"','"+landmark+"'); "
    cur.execute(q1)
    connection.commit()
    q="select max(add_id) from address"  
    cur.execute(q)
    l=cur.fetchall()
    cur.nextset()
    add_id = l[0][0]  

    print("Enter new Payment Credentials")
    cart_no = input("   Enter Card Number: ")
    name =    input("   Enter Name on the card: ")
    cvv =     input("   Enter CVV: ")
    exp =     input("   Enter Expiry date: ")
    checker_list = connection.cursor(buffered=True)
    query="insert into payment_credentials(card_no, name_on_card, cvv, expiry_date) VALUES ("+str(cart_no)+",'"+str(name)+"',"+str(cvv)+",'"+str(exp)+"'); "
    cur.execute(query)
    connection.commit()
    query = "select max(paymentc_id) from payment_credentials ;"
    cur.execute(query)
    l = cur.fetchall()
    cur.nextset()
    paymentc = l[0][0] 

    query = "select max(c_id) from customer ;"
    cur.execute(query)
    l = cur.fetchall()
    cur.nextset()
    cart_id = l[0][0]+1
 
    q3 = "" 
    if gen == 'M':
        q3= q3 +"insert into customer(first_name, middle_name,last_name,gender, date_of_birth, email, phone,add_id,cart_id, paymentc_id) values ('"+str(f)+"'"+",'"
        q3=q3 + str(m)+"'"+",'"+str(la)+"','M'"+",'"+str(date)+"'"+",'"+str(email)+"'"+",'"+str(phone)+"',"+str(add_id)+",'"+str(cart_id)+"'," + str(paymentc)+"); "
    else:
        q3= q3 +"insert into customer(first_name, middle_name,last_name,gender, date_of_birth, email, phone,add_id,cart_id, paymentc_id) values ('"+str(f)+"'"+",'"
        q3=q3 + str(m)+"'"+",'"+str(la)+"','F'"+",'"+str(date)+"'"+",'"+str(email)+"'"+",'"+str(phone)+"',"+str(add_id)+",'"+str(cart_id)+"'," + str(paymentc)+"); "
    cur.execute(q3)
    connection.commit()
    q2="select max(c_id) from customer"
    cur.execute(q2)
    l1=cur.fetchall()
    cur.nextset()
    c_id = l1[0][0]
    
    print("Customer added")
    sleep(1)
    passwd=int(input("enter new password for your login id: "))
    cur.nextset()
    q4="insert into user (name,password,type) values ('"+str(name)+"','"+str(passwd)+"','customer')"
    cur.execute(q4)
    connection.commit()
    cur.nextset()
    q8="select max(user_id) from user;"
    cur.execute(q8)
    l1=cur.fetchall()
    cur.nextset()
    user_id = l1[0][0]
    q5="insert into customer_login values ((select max(user_id) from user),"+str(c_id)+")"
    cur.execute(q5)
    connection.commit()
    customer_grant(str(user_id), str(c_id), str(passwd))


