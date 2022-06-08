from connecting import *
from pytz import country_timezones
from pickle import FALSE, NONE
from tkinter import E, END
import mysql.connector as c
from os import execlpe, system, name
from time import sleep
from tabulate import tabulate
from datetime import datetime
def edit_detials_supplier(connection,s_id):
    sleep(0.25)
    clear()
    cur=connection.cursor(buffered=True)
    print("-----------------------------------------------------------------------")
    print("                        Edit Details")
    print("-----------------------------------------------------------------------")    
    print("1: Edit name")
    print("2: Edit gst no.")  
    print("3: Edit email")
    print("4: Edit phone")
    print("5. Edit address")
    print("0: Exit")
    choice=-1
    while choice<0 or choice>5:
        choice=int(input("enter choice between 0 to 5: "))
    if choice==1:
        s1=input("enter the new name: ")
        query="UPDATE supplier_"+str(s_id)+" SET s_name='"+str(s1)+"' where s_id="+str(s_id)
        cur.execute(query)
        connection.commit()
        print("name changed successfully")
    elif choice==2:
        s1=int(input("enter the new gst no. : "))
        query="UPDATE supplier_"+str(s_id)+" SET gst_no="+str(s1)+" where s_id="+str(s_id)
        cur.execute(query)
        connection.commit()
        print("gst number changed successfully")
    elif choice==3:
        s1=input("enter the new email: ")
        query="UPDATE supplier_"+str(s_id)+" SET email='"+str(s1)+"' where s_id="+str(s_id)
        cur.execute(query)
        connection.commit()
        print("email changed successfully")
    elif choice==4:
        s1=input("enter the new phone number: ")
        query="UPDATE supplier_"+str(s_id)+" SET phone='"+str(s1)+"' where s_id="+str(s_id)
        cur.execute(query)
        connection.commit()
        print("phone changed successfully")
    elif choice==5:
        mainline=input("enter new main line: ")
        city=input("enter new city: ")
        state=input("enter new state: ")
        country=input("enter new country: ")
        postalcode=int(input("enter new postal code: "))
        landmark=input("enter new landmark(enter just space if no landmark): ")
        q1="UPDATE address_s_"+str(s_id)+" SET main_line='"+mainline+"'"+", city='"+city+"'"+", state='"+state+"'"+", country='"+country+"'"+",postal_code="+str(postalcode)+",landmark='"+landmark+"'"+" where add_id in(select add_id from supplier_"+str(s_id)+" where s_id="+str(s_id)+")"
        cur.execute(q1)
        connection.commit()
        print("address changed successfully")
    else:
        return

def historysup(connection,s_id):
    sleep(0.25)
    clear()
    cur=connection.cursor(buffered=True)
    q="select * from supplies_ordered_"+str(s_id)+" where received='TRUE' and s_id="+str(s_id)+" order by so_id"
    cur.execute(q)
    print(tabulate(cur, headers=["order ID","supplier ID","product ID","quantity","total cost"]))
    sleep(1)
    input("Press Enter for Previous Screen  ")

def product_supply(connection,s_id):
    sleep(0.25)
    clear()
    cur=connection.cursor(buffered=True)
    while True:
        print("-----------------------------------------------------------------------")
        print("                        Deliver Products")
        print("-----------------------------------------------------------------------")    
        print("1: Mark some product as delivered")
        print("0: Exit")
        choice=-1
        while choice!=1 and choice!=0:
            choice=int(input("Enter Choice: "))
        if choice==1:
            print(s_id)
            q="select so_id, s_id, p_id, t_cost, quantity from supplies_ordered_"+str(s_id)+" where received = 'FALSE' and s_id = "+str(s_id)+" ORDER BY so_id ASC ;"  
            cur.execute(q)
            l = cur.fetchall()
            if(len(l) == 0):
                print("No new Supplies Demanded.")
                return
            print("supplies Order ID\tsupplier ID\tproduct ID\ttotal cost\tquantity")   
            for i in l:
                print(str(i[0])+"\t\t"+str(i[1])+"\t\t"+str(i[2])+"\t\t"+str(i[3])+"\t\t"+str(i[4]))
            ch = -1
            ch=int(input("enter order ID of the delivered order from above: "))
            q3 = "select so_id, s_id, p_id, t_cost, quantity from supplies_ordered_"+str(s_id)+" where received = 'FALSE' and s_id = "+str(s_id)+" and so_id = "+str(ch)+" ;"  
            cur.execute(q3)
            for i in cur: 
                print(i)
            temp = -1
            for i in cur:
                temp = 1
                q1="UPDATE supplies_ordered_"+str(s_id)+" SET received = 'TRUE' where so_id = "+str(ch) 
                cur.execute(q1)
                connection.commit()
                print("delivery recorded")
            if temp == -1:
                print("Invalid Input !!")
        else:
            break
    print("redirecting to main menu...")
    sleep(1.00)

def suppliermenu(connection):
    sleep(0.25)
    clear()
    s_id = find_user_id(3)
    cont = True  
    while cont:  
        clear()
        print("-----------------------------------------------------------------------")
        print("                            Supplier Menu")
        print("-----------------------------------------------------------------------")
        print("1: Edit your details")
        print("2: product supply history")
        print("3: deliver products asked")
        print("0: Exit")
        try:
            choice = int(input("Enter Choice: "))
        except:
            print("Something Went Wrong :(")
            exit()
        if choice == 1:
            edit_detials_supplier(connection,s_id)
        elif choice == 2:
            historysup(connection, s_id)
        elif choice == 3:
            product_supply(connection,s_id)
        elif choice == 0:
            return
        else:
            print("Invalid Choice !! Try Again")
            sleep(0.5)
        
  
