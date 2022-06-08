"""
pip install tabulate
supplier : 10250     cB9kGs
IT:        10000      SQ9VZVBnjjJI
storage:   10001     RK3TqJq8z
manager of department 1   10004 7fo9TrLa
customer   10050   sDXYx6tygrA9
"""
from configparser import InterpolationError

from numpy import c_
from new_user import *
from sign_up import *
from connecting import *
from supplier import *
from pytz import country_timezones
from pickle import FALSE, NONE
from tkinter import E, END
import mysql.connector as c
from os import execlpe, system, name
from time import sleep
from tabulate import tabulate
from datetime import datetime

user_n = 0
user_passwd = ""


def clear():            # function to clear command prompt
    if name == 'nt':
        _ = system('cls')
    else:
        _ = system('clear')

def print_product(cursor1):
    clear()
    print(tabulate(cursor1, headers=["Product ID", "Product Name", "Cost", "Stock", "Manu Date ", "Expiry Date"]))
    sleep(1)  


def remove_product_form_cart(connection, c_id, p_id):
    query = "DELETE from add_to_cart_"+str(c_id)+" where c_id = "+ str(c_id)+"  and p_id = "+ str(c_id)+" and purchased = 'FALSE'"
    cursor = connection.cursor(buffered=True)
    cursor.execute(query)
    connection.commit()

def veiw_cart(connection, c_id):
    try:
        cursor1 = connection.cursor(buffered=True)
        query = "select P.p_id, P.product_name, (select min(cost) from supplied_by where P.p_id = p_id) as cost, P.stock, A.quantity, A.time_added from product P, add_to_cart_"+str(c_id)+" A where A.c_id = "+str(c_id)+" and A.p_id = P.P_id and A.purchased = 'FALSE';"
        cursor1.execute(query)
        print("-----------------------------------------------------------------------")
        print("                        Cart of User "+str(c_id))
        print("-----------------------------------------------------------------------")
        print("Product ID \t Product Name\tCost\tStock\tQuantity\tTime added")
        for x in cursor1:
            print(str(x[0])+"\t"+str(x[1])+"\t"+str(x[2])+"\t"+str(x[3])+"\t"+str(x[4])+"\t"+str(x[5]))                   
    except Exception as e:
        print(e)
        print("Something Went Wrong :(")
        exit()
    try:
        choice = int(input("1 to remove products from cart, other key to return : "))
        if choice == 1:
            p_id = int(input("Enter Product Id : "))
            remove_product_form_cart(connection, c_id, p_id)
    except: 
        return

def add_product_to_cart(connection, c_id, p_id):
    try:
        cursor4 = connection.cursor(buffered=True)
        query4 = "select stock from product where p_id = "+str(p_id)+";"
        cursor4.execute(query4) 
        stock = 0
        for x in cursor4:
            stock = x[0]
        quantity = 0
        while(True):
            quantity =  int(input("Enter quantity stock: "+str(stock)+" (-1 to return): "))
           
            if(quantity > stock):
                print("Can't order more than stock!!!! Try Again")
            else:
                break
                    
        cursor1 = connection.cursor(buffered=True)
        query = "select * from add_to_cart_"+str(c_id)+" where c_id = "+str(c_id)+" and p_id = "+str(p_id)+" and purchased Like 'FALSE'"
        cursor1.execute(query) 
        count = 0 
        for x in cursor1:       # check if the product already exixt in the table
            count += 1
            cursor3 = connection.cursor(buffered=True)
            query3 = "UPDATE add_to_cart_"+str(c_id)+" SET quantity = (quantity +"+str(quantity)+") where c_id = "+str(c_id)+" and p_id = "+str(p_id)+" and purchased Like 'FALSE'; "
            cursor3.execute(query3) 
            connection.commit()
            input("Sucessfully added Press Enter to go the previous screen  ")
            break
            
        if count == 0:               # if the prduct is not in the table
            cursor2 = connection.cursor(buffered=True)
            query2 = "INSERT INTO add_to_cart_"+str(c_id)+" (cart_id, c_id, p_id, quantity, purchased) VALUES ("+str(c_id)+","+str(c_id)+","+str(p_id)+","+str(quantity)+", 'FALSE');"
            cursor2.execute(query2)
            connection.commit() 
            input("Sucessfully added Press Enter to go the previous screen  ")
    except Exception as e:
        print("Something Went Wrong :(")
        print(e)
        exit()
    sleep(2)

def filter_products(connection, c_id):
    sleep(0.25)
    clear()
    print("-----------------------------------------------------------------------")
    print("                        Filter Option")
    print("-----------------------------------------------------------------------")    
    print("1: Sort in Alphabetical order")
    print("2: Sort in Reverse Alphabetical order")  
    print("3: Search By name")
    print("4: Search in Product list based on cost Range")
    print("5: Search by maufacurer")
    print("6: Search by catergory")
    print("0: Exit")
    try:
        choice = int(input("Enter Chocie: "))
        sleep(1)
    except:
        print("Something Went Wrong :(")
        exit()

    cursor1 = connection.cursor(buffered=True)
    print(choice)
    if choice == 0:
        return
    if choice == 1:
        try:
            print("---------------------------------------------------------------------------------------------")
            print("                  Product In Alphabetical order")
            print("---------------------------------------------------------------------------------------------")
            query = "select P.p_id, P.product_name, (select min(cost) from supplied_by where P.p_id = p_id) as cost, P.stock, P.manu_date, P.expiry_date from product P order by P.product_name; "
            cursor1.execute(query)
            print_product(cursor1)
        except Exception as e:
            print(e)
            print("Something Went Wrong :(")
            exit()

    elif choice == 2:
        try:
            print("---------------------------------------------------------------------------------------------")
            print("               Product In Reverse Alphabetical order")
            print("---------------------------------------------------------------------------------------------")
            query = "select P.p_id, P.product_name, (select min(cost) from supplied_by where P.p_id = p_id) as cost, P.stock, P.manu_date, P.expiry_date from product P order by P.product_name desc; "
            cursor1.execute(query)
            print_product(cursor1)
        except:
            print("Something Went Wrong :(")
            exit()

    elif choice == 3:
        try:
            text = str(input("Enter Search Text: "))
            query = "select P.p_id, P.product_name, (select min(cost) from supplied_by where P.p_id = p_id) as cost, P.stock, P.manu_date, P.expiry_date from product P where P.product_name like '%"+text+"%' "
            cursor1.execute(query)
            print("---------------------------------------------------------------------------------------------")
            print("                          Products with name Like "+text)
            print("---------------------------------------------------------------------------------------------")
            print_product(cursor1)
        except:
            print("Something Went Wrong :(")
            exit()

    elif choice == 4:
        print("Enter Range: ")
        try:
            lower_bound = int(input("         From: "))
            upper_bound = int(input("         To: "))
            query = "select * from (select P.p_id, P.product_name, (select min(cost) from supplied_by where P.p_id = p_id) as cost, P.stock, P.manu_date, P.expiry_date from product P) as P where P.cost between "+str(lower_bound)+ " and "+str(upper_bound)+"; "
            cursor1.execute(query)
            print("---------------------------------------------------------------------------------------------")
            print("                       Product In Range "+str(lower_bound)+" and "+str(upper_bound))
            print("---------------------------------------------------------------------------------------------")
            print_product(cursor1)
        except:
            print("Something Went Wrong :(")
            exit()

    elif choice == 5:
        try:
            text = str(input("Enter Manufacurer Name: "))
            query = "select P.p_id, P.product_name, (select min(cost) from supplied_by where P.p_id = p_id) as cost, P.stock, P.manu_date, P.expiry_date from product P where P.p_id IN (select M.p_id from manufactured_by M where M.man_id in (select A.man_id from manufacturer A where man_name like '%"+text+"%'))"
            cursor1.execute(query)
            print("---------------------------------------------------------------------------------------------")
            print("                          Products with Manufacturer Name Like "+text)
            print("---------------------------------------------------------------------------------------------")
            print_product(cursor1)
        except:
            print("Something Went Wrong :(")
            exit()

    elif choice == 6:
        try:
            text = str(input("Enter Manufacurer Name: "))
            query = "select P.p_id, P.product_name, (select min(cost) from supplied_by where P.p_id = p_id) as cost, P.stock, P.manu_date, P.expiry_date from product P where P.p_id IN (select C.p_id from categorization C where C.cat_id in (select A.cat_id from product_category A where cat_name like '%t%'));"
            cursor1.execute(query)
            print("---------------------------------------------------------------------------------------------")
            print("                          Products with Catergory name Like "+text)
            print("---------------------------------------------------------------------------------------------")
            print_product(cursor1)
        except:
            print("Something Went Wrong :(")
            exit()
    else:
        print("Invalid Input !!")

    choice = int(input("Enter Product Id to add to the cart (-1 for last menu): "))
    if choice != -1:
        add_product_to_cart(connection, c_id, choice)

def search_in_products(connection,c_id):
    sleep(0.25)
    clear()
    cursor1 = connection.cursor(buffered=True)
    try:
        text = str(input("Enter Search Text: "))
        query = "select * from product where product_name like '%"+text+"%'"
        cursor1.execute(query)
        clear()
        print("---------------------------------------------------------------------------------------------")
        print("                          Products with name Like "+text)
        print("---------------------------------------------------------------------------------------------")
        print_product(cursor1)
        choice = int(input("Enter Product Id to add to the cart (-1 for last menu): "))
        if choice != -1:
            add_product_to_cart(connection, c_id, choice)
    except:
        print("Something Went Wrong :(")
        exit()

def historyorder(connection,c_id):
    sleep(0.25)
    clear()
    cur=connection.cursor(buffered=True)
    q = "select * from retail_store.order_"+str(c_id)+" where order_id in (select order_id from place_order_"+str(c_id)+" where c_id = "+str(c_id)+");"
    cur.execute(q)
    for i in cur:
        print("-----------------------------------------------------------------")

        print("Order ID : "+str(i[0])+"\nTotal Cost:"+str(i[1])+"\Status: "+str(i[2])+"\nTotal Units:"+str(i[3])+"\nOrdered On:"+str(i[4]))
        cur1=connection.cursor(buffered=True)
        q1 = "select * from order_details_"+str(c_id)+" where order_id = "+str(i[0])+";"
        cur1.execute(q1)
        print("Product_id    Price   quanntity")
        for j in cur1:
            print(str(j[0])+"\t\t"+str(j[1])+"\t"+str(j[2]))

    sleep(1)
    input("Press Enter for Previous Screen  ")


def add_in_cart(connection, c_id):
    cursor1 = connection.cursor(buffered=True)
    try:
        print("---------------------------------------------------------------------------------------------")
        print("                  Product List")
        print("---------------------------------------------------------------------------------------------")
        query = "select P.p_id, P.product_name, (select cost from supplied_by where P.p_id = p_id) as cost, P.stock, P.manu_date, P.expiry_date from product P order by P.product_name; "
        cursor1.execute(query)
        print_product(cursor1)
    except Exception as e:
        print(e)
        print("Something Went Wrong :(")
        exit()
    choice = int(input("Enter Product Id to add to the cart (-1 for last menu): "))
    if choice != -1:
        add_product_to_cart(connection, c_id, choice)

def edit_details_cust(connection, c_id):
    sleep(0.25)
    clear()
    cur=connection.cursor(buffered=True)
    print("-----------------------------------------------------------------------")
    print("                        Edit Details")
    print("-----------------------------------------------------------------------")      
    print("1: Edit name")
    print("2: Edit phone")
    print("3: Edit address")
    print("4: Edit email")
    print("0: Exit")
    choice=-1
    while choice<0 or choice>4:
        choice=int(input("enter choice between 0 to 4: "))
    if choice == 1:
        f = str(input("enter new first name: "))
        m = str(input("enter new middle name(optional): "))
        l = str(input("enter new last name(optional): "))
        q="UPDATE customer_"+str(c_id)+" SET first_name='"+f+"'"+", middle_name='"+m+"'"+", last_name='"+l+"' where c_id="+str(c_id)
        cur.execute(q)
        connection.commit()
        print("name changed successfully")
    elif choice == 2:
        s1=input("enter the new phone number: ")
        query="UPDATE customer_"+str(c_id)+" SET phone='"+str(s1)+"' where c_id="+str(c_id)
        cur.execute(query)
        connection.commit()
        print("phone changed successfully")
    elif choice==3:
        mainline=input("enter new main line: ")
        city=input("enter new city: ")
        state=input("enter new state: ")
        country=input("enter new country: ")
        postalcode=int(input("enter new postal code: "))
        landmark=input("enter new landmark(enter just space if no landmark): ")
        q1="UPDATE address_"+str(c_id)+" SET main_line='"+mainline+"'"+", city='"+city+"'"+", state='"+state+"'"+", country='"+country+"'"+",postal_code="+str(postalcode)+",landmark='"+landmark+"'"+" where add_id in(select add_id from customer_"+str(c_id)+" where c_id="+str(c_id)+")"
        cur.execute(q1)
        connection.commit()
        print("address changed successfully")
    elif choice==4:
        s1=input("enter the new email: ")
        query="UPDATE customer_"+str(c_id)+" SET email ='"+str(s1)+"' where c_id="+str(c_id)
        cur.execute(query)
        connection.commit()
        print("email changed successfully")
    else:
        return

def Change_Payment_Credentials( connection, c_id):
    print("Enter new Payment Credentials")
    cart_no = input("   Enter Card Number: ")
    name =    input("   Enter Name on the card: ")
    cvv =     input("   Enter CVV: ")
    exp =     input("   Enter Expiry date: ")
    cur=connection.cursor(buffered=True)
    query="insert into payment_credentials_"+str(c_id)+"(card_no, name_on_card, cvv, expiry_date) VALUES ("+str(cart_no)+",'"+str(name)+"',"+str(cvv)+",'"+str(exp)+"'); "
    cur.execute(query)
    connection.commit()
    query = "select max(paymentc_id) from payment_credentials ;"
    cur.execute(query)
    l=cur.fetchall()
    cur.nextset()
    max1=l[0][0] 
    query="UPDATE customer_"+str(c_id)+" SET paymentc_id = '"+str(max1)+"' where c_id = "+str(c_id)+";"
    cur.execute(query)
    connection.commit()
    print("Changed successfully")

def place_order(connection,c_id):
    sleep(0.25)
    clear()
    cur=connection.cursor()
    q1="select * from customer_"+str(c_id)+" where c_id = "+str(c_id)
    cur.execute(q1)
    for q in cur:
        first=q[1]
        middle=q[2]
        last=q[3]
        gender=q[4]
        dob=q[5]
        email=q[6]
        phone=q[7]
        add_id=q[8]
        cart_id=q[9]
        pc_id=q[10]
    cursor1 = connection.cursor(buffered=True)
    query = "select * from add_to_cart_"+str(c_id)+" where c_id = "+str(c_id)+" and purchased Like 'FALSE'"
    cursor1.execute(query)
    quantity=[]
    pid=[]
    cost=[]
    for i in cursor1:
        quantity.append(i[3])
        pid.append(i[2])
    for i in range(0,len(pid)):
        query2 = "select (select min(cost) from supplied_by where P.p_id = p_id) as cost from product P where P.p_id = "+str(pid[i])
        query3="update product set stock = (stock-"+str(quantity[i])+") where p_id = "+str(pid[i])
        cur.execute(query2)
        for i in cur:
            cost.append(i[0])
        cur.nextset()
        
        cur.execute(query3)
        cur.nextset()
        
    q3="select max(order_id) from retail_store.order"
    cur.execute(q3)
    for i in cur:
        orderid=i[0]+1
    cur.nextset()
    tc=0
    to=0
    for i in range(0,len(pid)):
        to+=quantity[i]
        tc+=quantity[i]*cost[i]
    q4="insert into retail_store.order (order_id,total_cost,total_units) values ("+str(orderid)+","+str(tc)+","+str(to)+")"
    cur.execute(q4)
    cur.nextset()
    q5="select max(detail_id) from order_details"
    cur.execute(q5)
    detid = -1
    for i in cur:
        detid=i[0]
    for i in range(1,len(pid)):
        q6="insert into order_details values("+str(detid+i)+","+str(orderid)+","+str(pid[i])+","+str(cost[i])+","+str(quantity[i])+")"
        cur.execute(q6)
        cur.nextset()
    q7="insert into place_order values("+str(c_id)+","+str(orderid)+")"
    cur.execute(q7)
    cur.nextset()
    q0="select max(ship_id) from shipping_info"
    cur.execute(q0)
    shipid = -1
    for i in cur:
        shipid=i[0]+1
    cur.nextset()
    q8="insert into shipping_info values ("+str(shipid)+",'"+str(phone)+"',"+str(add_id)+")"
    cur.execute(q8)
    cur.nextset()
    q9="insert into shipped_to values("+str(orderid)+","+str(shipid)+")"
    cur.execute(q9)
    cur.nextset()
    clear()
    print("PAYMENT PORTAL")
    print("1: give new credentials")
    print("2: use existing credentials")
    choice=-1
    while choice!=1 and choice!=2:
        choice=int(input("enter choice: "))
    if choice==2:
        print("payment has been done using existing payment credentials :)")
    else:
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
        paymentc = l[0][0]
        cur.nextset()
    query = "UPDATE add_to_cart_"+str(c_id)+" SET purchased='TRUE' where cart_id="+str(cart_id)+" and c_id = "+str(c_id)+" and purchased LIKE 'FALSE'; "
    cur.execute(query)
    connection.commit()
    

def customermenu(connection):
    sleep(0.25)
    clear()
    c_id = find_user_id(1)
    cont = True  
    while cont:  
        clear()
        print("-----------------------------------------------------------------------")
        print("                            Customer Menu")
        print("-----------------------------------------------------------------------")
        print("1: Veiw Cart")
        print("2: Filter Products")
        print("3: Search in Products")
        print("4: Add In Cart")
        print("5: Order History")
        print("6: Change Payment Credentials")
        print("7: Edit Customer Info")
        print("8. Place Order (Buy all items in cart)")
        print("0: Exit")
        try:
            choice = int(input("Enter Choice: "))
        except:
            print("Something Went Wrong :(")
            exit()
        if choice == 1:
            veiw_cart(connection,c_id)
        elif choice == 2:
            filter_products(connection, c_id)
        elif choice == 3:
            search_in_products(connection,c_id)
        elif choice == 4:
            add_in_cart(connection, c_id)
        elif choice == 5:
            historyorder(connection, c_id)
        elif choice == 6:
            Change_Payment_Credentials( connection, c_id)
        elif choice == 7:
            edit_details_cust(connection, c_id)
        elif choice == 8:
            place_order(connection,c_id)
        elif choice == 0:
            return
        else:
            print("Invalid Choice !! Try Again")
            sleep(0.5)
    # return 0



def edit_manager_details(connection, e_id):
    sleep(0.25)
    clear()
    cur=connection.cursor(buffered=True)
    print("-----------------------------------------------------------------------")
    print("                        Edit Details")
    print("-----------------------------------------------------------------------")      
    print("1: Edit email")
    print("2: Edit phone")
    print("3: Edit address")
    print("4: Edit Name")
    print("0: Exit")
    choice=-1
    while choice<0 or choice>4:
        choice=int(input("enter choice between 0 to 4: "))
    if choice == 1:
        s1=input("enter the new email: ")
        query="UPDATE employee SET email_id='"+str(s1)+"' where e_id="+str(e_id)
        cur.execute(query)
        connection.commit()
        print("email changed successfully")
    elif choice == 2:
        s1=input("enter the new phone number: ")
        query="UPDATE employee SET phone='"+str(s1)+"' where e_id="+str(e_id)
        cur.execute(query)
        connection.commit()
        print("phone changed successfully")
    elif choice==3:
        mainline=input("enter new main line: ")
        city=input("enter new city: ")
        state=input("enter new state: ")
        country=input("enter new country: ")
        postalcode=int(input("enter new postal code: "))
        landmark=input("enter new landmark(enter just space if no landmark): ")
        q1="UPDATE address SET main_line='"+mainline+"'"+", city='"+city+"'"+", state='"+state+"'"+", country='"+country+"'"+",postal_code="+str(postalcode)+",landmark='"+landmark+"'"+" where add_id in(select add_id from employee where e_id="+str(e_id)+")"
        cur.execute(q1)
        connection.commit()
        print("address changed successfully")
    elif choice==4:
        f=input("enter new first name: ")
        m=input("enter new middle name(optional): ")
        l=input("enter new last name(optional): ")
        q="UPDATE employee SET first_name='"+f+"'"+", middle_name='"+m+"'"+", last_name='"+l+"' where e_id="+str(e_id)
        cur.execute(q)
        connection.commit()
        print("name changed successfully")
    else:
        return

def add_new_supplier(connection, e_id):  
    query = "select e_id from works_for where emp_type = 'storage'"
    cur = connection.cursor(buffered=True)
    cur.execute(query)
    count  = 0
    for x in cur:
        if x[0] == e_id:
            count = 1
            break
    if count == 0:
        print("You are not authorized to perform this task !!")
        sleep(2)
        return 
    print("ADD SUPPLIER DETAILS")
    name = input("Enter Supplier Name: ")
    gst = input("Enter GST number: ")
    phone_no = input("Enter Phone number: ")
    email = input("Enter email: ")
    print("Enter Address: ")
    mainline=input("Enter main line: ")
    city=input("Enter city: ")
    state=input("Enter state: ")
    country=input("Enter country: ")
    postalcode=int(input("Enter postal code: "))
    cur = connection.cursor(buffered=True)
    landmark=input("Enter landmark(enter just space if no landmark): ")
    q1="insert into address(main_line, city, state, country, postal_code, landmark) VALUES ('"+mainline+"','"+city+"','"+state+"','"+country+"',"+str(postalcode)+",'"+landmark+"'); "
    cur.execute(q1)
    connection.commit()
    q="select max(add_id) from address"  
    cur.execute(q)
    l=cur.fetchall()
    cur.nextset()
    max=l[0][0]
    q3="insert into supplier(s_name, gst_no, phone, add_id, email) VALUES ("+name+","+gst+","+phone_no+","+str(max)+","+email+")"
    cur.execute(q3)
    connection.commit()
    print("supplier added")
    sleep(1)
    passwd=input("enter new password for your login id: ")
    cur.nextset()
    q="select max(s_id) from supplier"  
    cur.execute(q)
    l=cur.fetchall()
    cur.nextset()
    max1=l[0][0]
    q4="insert into user (name,password,type) values ("+name+","+str(passwd)+",'supplier')"
    cur.execute(q4)
    connection.commit()
    cur.nextset()
    q5="insert into supplier_login values ((select max(user_id) from user),"+str(max1)+")"
    cur.execute(q5)
    connection.commit()
    q5="select max(user_id) from user ; "
    cur.execute(q5)
    l=cur.fetchall()
    cur.nextset()
    user_id=l[0][0]
    connection.commit()
    supplier_grant(str(user_id), str(max1), str(passwd))


def add_employee(connection,e_id):
    sleep(0.25)
    clear()
    cur=connection.cursor(buffered=True)
    q="select dep_id from manages where e_id = "+str(e_id)+" ; "
    cur.execute(q)
    dep_id = 0
    c=0
    for i in cur:
        c+=1
        dep_id = i[0]
    
    if c==0:
        print("you are not a manager, so you can't add an employee")
        sleep(2)
        return
    else:
        q300 = "select dep_name from department where dep_id = '"+str(dep_id)+"'"
        cur.execute(q300)
        typ = ""
        for i in cur:
            typ = i[0]
        f=input("enter first name: ")
        m=input("enter middle name: ")
        la=input("enter last name: ")
        gen=""
        while gen =='M' or gen =='F':
            gen=input("insert the gender of the employee(M or F): ")
            print(len(gen))
        date=input("enter date of birth of employee(yyyy-mm-dd): ")
        email=input("enter the email of employee: ")
        phone=input("enter the phone number of employee: ")
        salary=input("enter the salary of the employee: ")
        jdate=input("enter date of joining of the employee(yyyy-mm-dd): ")
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
        max1=l[0][0]  
        q3 = "" 
        if gen == 'M':
            q3= q3 +"insert into employee (first_name, middle_name,last_name,gender, date_of_birth, email_id, phone, salary, date_of_joining,add_id) values ('"+str(f)+"'"+",'"
            q3=q3 + str(m)+"'"+",'"+str(la)+"','M'"+",'"+str(date)+"'"+",'"+str(email)+"'"+",'"+str(phone)+"',"+str(salary)+",'"+str(jdate)+"'," + str(max1)+"); "
        else:
            q3= q3 +"insert into employee (first_name, middle_name,last_name,gender, date_of_birth, email_id, phone, salary, date_of_joining,add_id) values ('"+str(f)+"'"+",'"
            q3=q3 + str(m)+"'"+",'"+str(la)+"','F'"+",'"+str(date)+"'"+",'"+str(email)+"'"+",'"+str(phone)+"',"+str(salary)+",'"+str(jdate)+"'," + str(max1)+"); "
        cur.execute(q3)
        connection.commit()
        q2="select max(e_id) from employee"
        cur.execute(q2)
        l1=cur.fetchall()
        cur.nextset()
        max2=l1[0][0]
        q7="insert into works_for (e_id,dep_id,emp_type) values ("+str(max2)+","+str(dep_id)+",'"+str(typ)+"')"
        cur.execute(q7)
        connection.commit()
        cur.nextset()
        print("employee added")
        sleep(1)
        passwd=int(input("enter new password for your login id: "))
        cur.nextset()
        q4="insert into user (name,password,type) values ('"+str(name)+"','"+str(passwd)+"','employee')"
        cur.execute(q4)
        connection.commit()
        cur.nextset()
        q8="select max(user_id) from user;"
        cur.execute(q8)
        l1=cur.fetchall()
        cur.nextset()
        max3=l1[0][0]
        q5="insert into employee_login values ((select max(user_id) from user),"+str(max2)+")"
        cur.execute(q5)
        connection.commit()
        employee_grant(str(max3), str(max2), str(passwd))



def search_customer_details(conneciton, e_id):
    query = "select e_id from works_for where emp_type = 'IT';"
    cur = conneciton.cursor(buffered=True)
    cur.execute(query)
    count  = 0
    for x in cur:
        if x[0] == e_id:
            count = 1
            break
    if count == 0:
        print("You are not authorized to perform this task !!")
        return 
    while True:
        sleep(1)
        clear()
        print("Search In the customer list by:")
        print("     1: first name")
        print("     2: middle name")
        print("     3: last name")
        print("     0: exit")
        try:
            int(input("Enter Choice: "))
        except:
            print("something went wrong :(")
        if choice == 0:
            break
        elif choice == 1:
            f = str(input("Enter First name: "))
            query = "select c_id, first_name, middle_name, last_name, gender, date_of_birth, email from customer where first_name LIKE '%"+f+"%' "
            cursor = conneciton.cursor(buffered=True)
            cursor.execute(query)
            print("Customer ID\tFirst name\tMiddle name\tLast name\tGender\tD.O.B.\tEmail")
            for i in cursor:
                print(str(i[0])+"\t\t"+str(i[1])+"\t"+str(i[2])+"\t"+str(i[3])+"\t"+str(i[4])+"\t"+str(i[5])+"\t"+str(i[6]))
            sleep(1)
            input("Press Enter for Previous Screen  ")
            break
                    
        elif choice == 2:
            f = str(input("Enter Middle name: "))
            query = "select c_id, first_name, middle_name, last_name, gender, date_of_birth, email from customer where middle_name LIKE '%"+f+"%' "
            cursor = conneciton.cursor(buffered=True)
            cursor.execute(query)
            print("Customer ID\tFirst name\tMiddle name\tLast name\tGender\tD.O.B.\tEmail")
            for i in cursor:
                print(str(i[0])+"\t\t"+str(i[1])+"\t"+str(i[2])+"\t"+str(i[3])+"\t"+str(i[4])+"\t"+str(i[5])+"\t"+str(i[6]))
            sleep(1)
            input("Press Enter for Previous Screen  ")
            break
        elif choice == 3:
            f = str(input("Enter Last name: "))
            query = "select c_id, first_name, middle_name, last_name, gender, date_of_birth, email from customer where last_name LIKE '%"+f+"%' "
            cursor = conneciton.cursor(buffered=True)
            cursor.execute(query)
            print("Customer ID\tFirst name\tMiddle name\tLast name\tGender\tD.O.B.\tEmail")
            for i in cursor:
                print(str(i[0])+"\t\t"+str(i[1])+"\t"+str(i[2])+"\t"+str(i[3])+"\t"+str(i[4])+"\t"+str(i[5])+"\t"+str(i[6]))
            sleep(1)
            input("Press Enter for Previous Screen  ")
            break
        else:
            print("Invalid Input !! Try again")

def add_product(connection,e_id):
    query = "select e_id from works_for where emp_type = 'storage'"
    cur = connection.cursor(buffered=True)
    cur.execute(query)
    count  = 0
    for x in cur:
        if x[0] == e_id:
            count = 1
            break
    if count == 0:
        print("You are not authorized to perform this task !!")
        sleep(2)
        return 
    cur = connection.cursor(buffered=True)
    print("Enter Product Details")
    name = input("Product Name: ")
    stock = 0
    manu = input("Manufacturer Date: ")
    exp = input("Expiry Date: ")
    manu_name = input("Manufacturer Name: ")
    cat_name = input("Catergory Name: ")
    query = "INSERT INTO product(product_name, stock, manu_date, expiry_date) VALUES ('"+str(name)+"',"+str(stock)+",'"+str(manu)+"','"+str(exp)+"');"
    cur.execute(query)
    connection.commit()
    q2="select max(p_id) from product"
    print("here 1")
    cur.execute(q2)
    l1=cur.fetchall()
    cur.nextset()
    p_id = l1[0][0]
    print("here 2")
    q3 = "select man_id from manufacturer where man_name LIKE '"+str(manu_name)+"';"
    cur.execute(q3)
    l1=cur.fetchall()
    count = 0
    for i in cur:
        count = 1
        break
    man_id = -1
    cat_id = -1
    
    print("here 3")
    if(count == 1):
        p_id = l1[0][0]
    else:
        qu2= "INSERT INTO manufacturer(man_name) VALUES ('"+str(manu_name)+"');"
        cur.execute(qu2)
        connection.commit()
        q2 = "select max(man_id) from manufacturer"
        cur.execute(q2)
        l1=cur.fetchall()
        cur.nextset()
        man_id = l1[0][0]
        print("here 4")

    q3 = "select cat_id from product_category where cat_name LIKE '"+str(cat_name)+"'"
    cur.execute(q3)
    l1=cur.fetchall()
    count = 0
    for i in cur:
        count = 1
        break
    print("here 5")
    cur.nextset()
    if(count == 1):
        cat_id = l1[0][0]
    else:
        qu2= "INSERT INTO product_category(cat_name) VALUES ('"+str(cat_name)+"');"
        cur.execute(qu2)
        connection.commit()
        q2 = "select max(cat_id) from product_category"
        cur.execute(q2)
        l1=cur.fetchall()
        cat_id = l1[0][0]
        print("here 6")

    q4 = "INSERT INTO manufactured_by(p_id, man_id) VALUES ("+str(p_id)+","+str(man_id)+")"
    cur.execute(q4)
    connection.commit()
    q4 = "INSERT INTO categorization(p_id, cat_id) VALUES ("+str(p_id)+","+str(cat_id)+")"
    cur.execute(q4)
    connection.commit()






def show_emp(connection, e_id):
    query = "select emp_type from works_for where e_id = "+str(e_id)+";"
    cur = connection.cursor(buffered=True)
    cur.execute(query)
    typ = ""
    for x in cur:
        typ = x[0]
    query = "select * from employee where e_id in (select e_id from works_for where emp_type = '"+str(typ)+"');"
    cur = connection.cursor(buffered=True)
    cur.execute(query)
    print("E ID\tFirst name\tMiddle name\tLast name\tGender\tD.O.B.\tEmail\tPhone\tsalary")
    for i in cur:
        print(str(i[0])+"\t"+str(i[1])+"\t\t"+str(i[2])+"\t\t"+str(i[3])+"\t\t"+str(i[4])+"\t"+str(i[5])+"\t"+str(i[6])+"\t"+str(i[7])+"\t"+str(i[8]))


def order_supply(connection,e_id, p_id):
    sleep(0.25)
    clear()
    query = "select e_id from works_for where emp_type = 'storage'"
    cur = connection.cursor(buffered=True)
    cur.execute(query)
    count  = 0
    for x in cur:
        if x[0] == e_id:
            count = 1
            break
    if count == 0:
        print("You are not authorized to perform this task !!")
        sleep(2)
        return 
    cur=connection.cursor()
    
    q="select * from supplied_by where p_id="+str(p_id)+" and cost in(select min(cost) from supplied_by where p_id="+str(p_id)+")"
    cur.execute(q)
    pid = -1
    sid =-1 
    cost = -1
    for i in cur:
        pid=i[0]
        sid=i[1]
        cost=i[1]
    quan=int(input("enter the quantity of product you want: "))
    tcost=quan*cost
    q1="select max(so_id) from supplies_ordered"
    cur.execute(q1)
    soid = -1
    for i in cur:
        soid = i[0]+1
    q2="insert into supplies_ordered values ("+str(soid)+","+str(sid)+","+str(pid)+","+str(tcost)+","+str(quan)+",'FALSE')"
    cur.execute(q2)
    connection.commit()
    print("Added Successfully ")
    input("Press Enter For Previous Screen  ")


def managermenu(connection):
    sleep(0.25)
    clear()
    e_id = find_user_id(2)
    cont = True  
    while cont:  
        clear()
        print("-----------------------------------------------------------------------")
        print("                            Employee Menu")
        print("-----------------------------------------------------------------------")
        print("1: Edit employee details")
        print("2: Add new supplier")
        print("3: add product(only if you are from storage department)")
        print("4: add new employee(only for managers)")
        print("5: Search customer details(only if you are IT department)")
        print("6: Show employees(only employees of your department will be displayed)")
        print("7: Order products from supplier")
        print("0. Exit")
        try:
            choice = int(input("Enter Choice: "))
        except:
            print("Something Went Wrong :(")
            exit()
        if choice == 1:
            edit_manager_details(connection, e_id)
        elif choice == 2:
            add_new_supplier(connection, e_id)
        elif choice == 3:
            add_product(connection,e_id)
        elif choice == 4:
            add_employee(connection,e_id)
        elif choice == 5:
            search_customer_details(connection, e_id)
        elif choice == 6:
            show_emp(connection, e_id)
        elif choice == 7:
            pid = int(input("Enter Product id: "))
            order_supply(connection, e_id, pid)
        elif choice == 0:
            return
        else:
            print("Invalid Choice !! Try Again")
            sleep(0.5)

        
if __name__ == "__main__":
    
    cont = True 
    connection = None  
    while cont:                             # Print Login Options 
        clear()
        print("-----------------------------------------------------------------------")
        print("                                Login")
        print("-----------------------------------------------------------------------")
        print("1: Sign In")
        print("2: Sign Up")
        print("0: Exit")
        try:
            choice = int(input("Enter Choice: "))                             # Get Choice
        except:
            print("Something Went Wrong :(")

        if choice == 1:
            ans = showSignin()                                             # show sign In options
            if ans == 0:
                print("\n Thank you for Visisting :)")
                exit()
            connection = get_connection(ans)                                # secure connection with sql
            if(connection == None):
                exit()
            if ans == 1:
                customermenu(connection)
                break
            elif ans == 2:
                managermenu(connection)
                break
            elif ans == 3:
                suppliermenu(connection)
                break
            break

        elif choice == 2: 
            ans = show_signup()
            if ans == 1:
                add_customer()

        elif choice == 0:
            print("\n Thank you for Visisting :)")
            cont = False
            exit()
        else:
            print("Invalid Choice !! Try Again")


    print("\n Thank you for Visiting :)")

