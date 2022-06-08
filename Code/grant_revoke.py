# Few change for different system 
# change user name, password 
# make sure user admin_user and schema retail_store exist 


# address acess to supplier
""""
-- sql querry to create user 'admin_user with all privilages 
CREATE USER 'admin_user'@'localhost' IDENTIFIED BY 'admin_user';
GRANT ALL privileges ON *.* TO 'admin_user'@'localhost';
GRANT CREATE USER ON *.* TO 'admin_user'@'localhost';
"""

import mysql.connector
from os import system, name
from time import sleep

passwd = 'mohit20086'


def clear():            # function to clear command prompt
    if name == 'nt':
        _ = system('cls')
    else:
    	_ = system('clear')


def customer_grant():       # grant permission defined in query1 and query2 to all the customers
    clear()
    print("running.......")
    mydb = mysql.connector.connect(
        host='localhost', 
        user = 'admin_user', 
        password = 'admin_user',
        database = 'retail_store'
    )
    cursor = mydb.cursor(buffered=True)
    cursor.execute("select U.user_id, U.password, C.c_id from user U, customer_login C where type LIKE 'customer' and U.user_id = C.user_id")

    for x in cursor:
        try:
            query1 = "CREATE USER '"+ str(x[0])+"'@'localhost' IDENTIFIED BY '"+x[1]+"'; "
            query1 = query1 +"CREATE VIEW add_to_cart_"+str(x[2])+" AS SELECT * FROM retail_store.add_to_cart WHERE c_id = "+str(x[2])+"; "
            query1 = query1 +"CREATE VIEW address_"+str(x[2])+" AS SELECT * FROM retail_store.address WHERE add_id in (select add_id from customer where c_id = "+str(x[2])+"); "
            query1 = query1 +"CREATE VIEW customer_"+str(x[2])+" AS SELECT * FROM retail_store.customer WHERE c_id = "+str(x[2])+"; "
            query1 = query1 +"CREATE VIEW customer_login_"+str(x[2])+" AS SELECT * FROM retail_store.customer_login WHERE c_id = "+str(x[2])+"; "
            query1 = query1 +"CREATE VIEW payment_credentials_"+str(x[2])+" AS SELECT * FROM retail_store.payment_credentials WHERE paymentc_id in (select paymentc_id from customer where c_id = "+str(x[2])+"); "
            query1 = query1 +"CREATE VIEW order_details_"+str(x[2])+" AS SELECT * FROM retail_store.order_details WHERE order_id in (select order_id from retail_store.place_order where c_id = "+str(x[2])+");"
            query1 = query1 +"CREATE VIEW order_"+str(x[2])+" AS SELECT * FROM retail_store.order WHERE order_id in (select order_id from retail_store.place_order where c_id = "+str(x[2])+"); "
            query1 = query1 +"CREATE VIEW payment_"+str(x[2])+" AS SELECT * FROM retail_store.payment WHERE paymentc_id in (select paymentc_id from retail_store.customer where c_id = "+str(x[2])+"); "
            query1 = query1 +"CREATE VIEW place_order_"+str(x[2])+" AS SELECT * FROM retail_store.place_order WHERE c_id = "+str(x[2])+"; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.add_to_cart_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.address_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer_login_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order_details_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.payment_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.payment_credentials_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.place_order_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost';"
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.shipped_to TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.shipping_info TO '"+str(x[0])+"'@'localhost';"
            query1 = query1 +"GRANT UPDATE, SELECT ON retail_store.categorization TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order_details TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.place_order TO '"+str(x[0])+"'@'localhost';"
            query1 = query1 +"GRANT SELECT ON retail_store.product TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.manufactured_by TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.manufacturer TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.product_category TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.supplied_by TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.supplier TO '"+str(x[0])+"'@'localhost';  FLUSH PRIVILEGES;"
            
            mydb1 = mysql.connector.connect(
                host='localhost', 
                user = 'root', 
                password = passwd,
                database = 'retail_store'
                )
            cursor1 = mydb1.cursor()
            cursor1.execute(query1, multi = True)

            query2 = "GRANT SELECT ON retail_store.categorization TO '"+str(x[0])+"'@'localhost'; "
            query2 = "GRANT SELECT ON retail_store.payment_credentials TO '"+str(x[0])+"'@'localhost'; "
            query2 = query2 + "GRANT UPDATE, SELECT ON retail_store.product TO '"+str(x[0])+"'@'localhost'; "
            query2 = query2 +"GRANT SELECT ON retail_store.manufactured_by TO '"+str(x[0])+"'@'localhost'; "
            query2 = query2 +"GRANT SELECT ON retail_store.manufacturer TO '"+str(x[0])+"'@'localhost'; "
            query2 = query2 + "GRANT SELECT ON retail_store.product_category TO '"+str(x[0])+"'@'localhost'; "
            query2 = query2 + "GRANT SELECT ON retail_store.supplied_by TO '"+str(x[0])+"'@'localhost'; "
            query2 = query2 + "GRANT SELECT ON retail_store.supplier TO '"+str(x[0])+"'@'localhost';  FLUSH PRIVILEGES;"
            mydb2 = mysql.connector.connect(
                host='localhost', 
                user = 'root', 
                password = passwd,
                database = 'retail_store'
                )
            cursor2 = mydb2.cursor()
            cursor2.execute(query2, multi = True)
        except:
            print("Permission already granted to user "+str(x[0])+" exist")
    print("Done")
    

def supplier_grant():       # grant permission defined in query1 to all the suppliers
    clear()
    print("running.......")
    mydb = mysql.connector.connect(
        host='localhost', 
        user = 'admin_user', 
        password = 'admin_user',
        database = 'retail_store'
    )
    cursor = mydb.cursor()
    cursor.execute("select U.user_id, U.password, S.s_id from user U, supplier_login S where type LIKE 'supplier' and U.user_id = S.user_id")
    for x in cursor:
        try:  
            query1 = "CREATE USER '"+ str(x[0])+"'@'localhost' IDENTIFIED BY '"+x[1]+"'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.categorization TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufactured_by TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufacturer TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product_category TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplied_by TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"CREATE VIEW supplier_"+str(x[2])+" AS SELECT * FROM retail_store.supplier WHERE s_id = "+str(x[2])+" ; "
            query1 = query1 +"CREATE VIEW address_s_"+str(x[2])+" AS SELECT * FROM retail_store.address WHERE add_id in (select add_id from supplier where s_id = "+str(x[2])+" ); "
            query1 = query1 +"CREATE VIEW supplier_login_"+str(x[2])+" AS SELECT * FROM retail_store.supplier_login WHERE s_id = "+str(x[2])+" ; "
            query1 = query1 +"CREATE VIEW supplies_ordered_"+str(x[2])+" AS SELECT * FROM retail_store.supplies_ordered WHERE s_id = "+str(x[2])+" ; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier_login_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplies_ordered_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost';  "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.address_s_"+str(x[2])+" TO '"+str(x[0])+"'@'localhost'; "
    
            query1 = query1 +" FLUSH PRIVILEGES; "     
            mydb1 = mysql.connector.connect(
                host='localhost', 
                user = 'root', 
                password = passwd,
                database = 'retail_store'
                )
            cursor1 = mydb1.cursor()
            cursor1.execute(query1)
        except Exception as e:
            print(e)
            print("Permission already granted to user "+str(x[0])+" exist")
    print("Done")


def employee_grant():           # grant permission defined in query1 to all the employees
    clear()
    print("running.......")  
    mydb = mysql.connector.connect(
        host='localhost', 
        user = 'admin_user', 
        password = 'admin_user',
        database = 'retail_store'
    )
    cursor = mydb.cursor()
    cursor.execute("select U.user_id, U.password, E.e_id from user U, employee_login E where type LIKE 'employee' and U.user_id = E.user_id")

    for x in cursor:
        try:       
            query1 = "CREATE USER '"+ str(x[0])+"'@'localhost' IDENTIFIED BY '"+x[1]+"'; "
            query1 = query1 +"GRANT SELECT ON retail_store.add_to_cart TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.address TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer_login TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.order TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.order_details TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.payment TO '"+str(x[0])+"'@''; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.shippelocalhostd_to TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufactured_by TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufacturer TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.shipping_info TO '"+str(x[0])+"'@'localhost';"
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.place_order TO '"+str(x[0])+"'@'localhost';"
            # query1 = query1 +"CREATE VIEW employee_"+str(x[2])+" AS SELECT * FROM retail_store.employee WHERE e_id = "+str(x[2])+"; "
            # query1 = query1 +"CREATE VIEW employee_login_"+str(x[2])+" AS SELECT * FROM retail_store.employee_login WHERE e_id = "+str(x[2])+"; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.categorization TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.department TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.employee TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.employee_login TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manages TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product_category TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplied_by TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier_login TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.user TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.works_for TO '"+str(x[0])+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplies_ordered TO '"+str(x[0])+"'@'localhost'; FLUSH PRIVILEGES;"
            mydb1 = mysql.connector.connect(
                host='localhost', 
                user = 'root', 
                password = passwd,
                database = 'retail_store'
                )
            cursor1 = mydb1.cursor()
            cursor1.execute(query1, multi = True)
        except:
            print("Permission already granted to user "+str(x[0])+" exist")
    print("Done")



def customer_revoke():       # revoke all permission from customer
    clear()
    print("running.......")
    mydb = mysql.connector.connect(
        host='localhost', 
        user = 'admin_user', 
        password = 'admin_user',
        database = 'retail_store'
    )
    cursor = mydb.cursor(buffered=True)
    cursor.execute("select U.user_id, U.password, C.c_id from user U, customer_login C where type LIKE 'customer' and U.user_id = C.user_id")
    for x in cursor:
        try:  
            query1 = "DROP VIEW add_to_cart_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW address_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW customer_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW customer_login_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW payment_credentials_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW order_details_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW order_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW payment_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW place_order_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP USER '"+str(x[0])+"'@'localhost'; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
    print("Done")


def supplier_revoke():       # revoke all permission from suppliers
    clear()
    print("running.......")
    mydb = mysql.connector.connect(
        host='localhost', 
        user = 'admin_user', 
        password = 'admin_user',
        database = 'retail_store'
    )

    cursor = mydb.cursor(buffered=True)
    cursor.execute("select U.user_id, U.password, S.s_id from user U, supplier_login S where type LIKE 'supplier' and U.user_id = S.user_id")
    for x in cursor:
        try:  
            query1 = "DROP USER '"+str(x[0])+"'@'localhost';"
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW supplier_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW supplier_login_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW address_s_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW supplies_ordered_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except Exception as e:
            print(e)
            print("Permission already revoked from user "+str(x[0])+" exist")
    print("Done")


def employee_revoke():       # revoke all permission from employee
    clear()
    print("running.......")
    mydb = mysql.connector.connect(
        host='localhost', 
        user = 'admin_user', 
        password = 'admin_user',
        database = 'retail_store'
    )

    cursor = mydb.cursor(buffered=True)

    cursor.execute("select U.user_id, U.password, E.e_id from user U, employee_login E where type LIKE 'employee' and U.user_id = E.user_id")
    for x in cursor:
        try:  
            query1 = "DROP USER '"+str(x[0])+"'@'localhost';"
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except:
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW employee_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except:
            print("Permission already revoked from user "+str(x[0])+" exist")
        try:  
            query1 = "DROP VIEW employee_login_"+str(x[2])+"; "
            cursor1 = mydb.cursor(buffered=True)
            cursor1.execute(query1, multi = True)
        except:
            print("Permission already revoked from user "+str(x[0])+" exist")
    print("Done")
        

def grant_permission():  
    customer_grant()   
    employee_grant()    
    supplier_grant()
    return
    clear()
    print("-----------------------------------------------------------------------")
    print("                      grant permissions")
    print("-----------------------------------------------------------------------")
    print("Grand predefined permission to the whole table of :")
    print("         1: Customers")
    print("         2: Employees")
    print("         3: Suppliers")
    choice = int(input("Enter Choice: "))
    sleep(0.25)
    if(choice == 1):
        customer_grant()
    elif(choice == 2):
        employee_grant()
    elif(choice == 3):
        supplier_grant()
    else:
        print("Invalid Input! Try Again!!")



def revoke_permission():
    customer_revoke()
    employee_revoke()
    supplier_revoke()
    return
    clear()
    print("-----------------------------------------------------------------------")
    print("                      Revoke permissions")
    print("-----------------------------------------------------------------------")
    print("Revoke all predefined permission from the whole table of :")
    print("         1: Customers")
    print("         2: Employees")
    print("         3: Suppliers")
    choice = int(input("Enter Choice: "))
    sleep(0.25)
    if(choice == 1):
        customer_revoke()
    elif(choice == 2):
        employee_revoke()
    elif(choice == 3):
        supplier_revoke()
    else:
        print("Invalid Input! Try Again!!")




if __name__ == "__main__":
    revoke_permission()
    grant_permission()
    exit() 
    while(True):
        clear()
        print("1: grant permissions")
        print("2: revoke permissions")
        print("0: exit")
        choice = int(input("Enter Choice: "))
        sleep(0.25)
        if(choice == 1):
            grant_permission()
        elif(choice == 2):
            revoke_permission()
        elif(choice == 0):
            exit()
        else:
            print("Invalid Input! Try Again!!")