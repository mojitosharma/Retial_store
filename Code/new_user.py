import mysql.connector
from os import system, name
from time import sleep

passwd = 'mohit20086'           # change here

def clear():            # function to clear command prompt
    if name == 'nt':
        _ = system('cls')
    else:
    	_ = system('clear')


def customer_grant(user_id, c_id, password):
    clear()
    try:
        query1 = "CREATE USER '"+ user_id+"'@'localhost' IDENTIFIED BY '"+password+"'; "
        query1 = query1 +"CREATE VIEW add_to_cart_"+c_id+" AS SELECT * FROM retail_store.add_to_cart WHERE c_id = "+c_id+"; "
        query1 = query1 +"CREATE VIEW address_"+c_id+" AS SELECT * FROM retail_store.address WHERE add_id in (select add_id from customer where c_id = "+c_id+"); "
        query1 = query1 +"CREATE VIEW customer_"+c_id+" AS SELECT * FROM retail_store.customer WHERE c_id = "+c_id+"; "
        query1 = query1 +"CREATE VIEW customer_login_"+c_id+" AS SELECT * FROM retail_store.customer_login WHERE c_id = "+c_id+"; "
        query1 = query1 +"CREATE VIEW payment_credentials_"+c_id+" AS SELECT * FROM retail_store.payment_credentials WHERE paymentc_id in (select paymentc_id from customer where c_id = "+c_id+"); "
        query1 = query1 +"CREATE VIEW order_details_"+c_id+" AS SELECT * FROM retail_store.order_details WHERE order_id in (select order_id from retail_store.place_order where c_id = "+c_id+");"
        query1 = query1 +"CREATE VIEW order_"+c_id+" AS SELECT * FROM retail_store.order WHERE order_id in (select order_id from retail_store.place_order where c_id = "+c_id+"); "
        query1 = query1 +"CREATE VIEW payment_"+c_id+" AS SELECT * FROM retail_store.payment WHERE paymentc_id in (select paymentc_id from retail_store.customer where c_id = "+c_id+"); "
        query1 = query1 +"CREATE VIEW place_order_"+c_id+" AS SELECT * FROM retail_store.place_order WHERE c_id = "+c_id+"; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.add_to_cart_"+c_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.address_"+c_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer_"+c_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer_login_"+c_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order_"+c_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order_details_"+c_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.payment_"+c_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.payment_credentials_"+c_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.place_order_"+c_id+" TO '"+user_id+"'@'localhost';"
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.shipped_to TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.shipping_info TO '"+user_id+"'@'localhost';"
        query1 = query1 +"GRANT UPDATE, SELECT ON retail_store.categorization TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order_details TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.order TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.place_order TO '"+user_id+"'@'localhost';"
        query1 = query1 +"GRANT SELECT ON retail_store.product TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT SELECT ON retail_store.manufactured_by TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT SELECT ON retail_store.manufacturer TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT SELECT ON retail_store.product_category TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT SELECT ON retail_store.supplied_by TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT SELECT ON retail_store.supplier TO '"+user_id+"'@'localhost';  FLUSH PRIVILEGES;"
        
        mydb1 = mysql.connector.connect(
            host='localhost', 
            user = 'root', 
            password = passwd,
            database = 'retail_store'
            )
        cursor1 = mydb1.cursor()
        cursor1.execute(query1, multi = True)

        query2 = "GRANT SELECT ON retail_store.categorization TO '"+user_id+"'@'localhost'; "
        query2 = "GRANT SELECT ON retail_store.payment_credentials TO '"+user_id+"'@'localhost'; "
        query2 = query2 + "GRANT UPDATE, SELECT ON retail_store.product TO '"+user_id+"'@'localhost'; "
        query2 = query2 +"GRANT SELECT ON retail_store.manufactured_by TO '"+user_id+"'@'localhost'; "
        query2 = query2 +"GRANT SELECT ON retail_store.manufacturer TO '"+user_id+"'@'localhost'; "
        query2 = query2 + "GRANT SELECT ON retail_store.product_category TO '"+user_id+"'@'localhost'; "
        query2 = query2 + "GRANT SELECT ON retail_store.supplied_by TO '"+user_id+"'@'localhost'; "
        query2 = query2 + "GRANT SELECT ON retail_store.supplier TO '"+user_id+"'@'localhost';  FLUSH PRIVILEGES;"
        mydb2 = mysql.connector.connect(
            host='localhost', 
            user = 'root', 
            password = passwd,
            database = 'retail_store'
            )
        cursor2 = mydb2.cursor()
        cursor2.execute(query2, multi = True)
    except:
        print("Permission already granted to user "+user_id+" exist")



def supplier_grant(user_id, s_id, password):       # grant permission defined in query1 to all the suppliers
    clear()
    try:  
        query1 = "CREATE USER '"+ user_id+"'@'localhost' IDENTIFIED BY '"+password+"'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.categorization TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufactured_by TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufacturer TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product_category TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplied_by TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"CREATE VIEW supplier_"+s_id+" AS SELECT * FROM retail_store.supplier WHERE s_id = "+s_id+" ; "
        query1 = query1 +"CREATE VIEW address_s_"+s_id+" AS SELECT * FROM retail_store.address WHERE add_id in (select add_id from supplier where s_id = "+s_id+" ); "
        query1 = query1 +"CREATE VIEW supplier_login_"+s_id+" AS SELECT * FROM retail_store.supplier_login WHERE s_id = "+s_id+" ; "
        query1 = query1 +"CREATE VIEW supplies_ordered_"+s_id+" AS SELECT * FROM retail_store.supplies_ordered WHERE s_id = "+s_id+" ; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier_"+s_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier_login_"+s_id+" TO '"+user_id+"'@'localhost'; "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplies_ordered_"+s_id+" TO '"+user_id+"'@'localhost';  "
        query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.address_s_"+s_id+" TO '"+user_id+"'@'localhost'; "

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
        print("Permission already granted to user "+user_id+" exist")
    print("Done")




def employee_grant(user_id, e_id, password):           # grant permission defined in query1 to all the employees
        try:       
            query1 = "CREATE USER '"+ user_id+"'@'localhost' IDENTIFIED BY '"+password+"'; "
            query1 = query1 +"GRANT SELECT ON retail_store.add_to_cart TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.address TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.customer_login TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.order TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.order_details TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.payment TO '"+user_id+"'@''; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.shippelocalhostd_to TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufactured_by TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manufacturer TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT SELECT ON retail_store.shipping_info TO '"+user_id+"'@'localhost';"
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.place_order TO '"+user_id+"'@'localhost';"
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.categorization TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.department TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.employee TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.employee_login TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.manages TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.product_category TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplied_by TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier_login TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplier TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.user TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.works_for TO '"+user_id+"'@'localhost'; "
            query1 = query1 +"GRANT INSERT, UPDATE, DELETE, SELECT ON retail_store.supplies_ordered TO '"+user_id+"'@'localhost'; FLUSH PRIVILEGES;"
            mydb1 = mysql.connector.connect(
                host='localhost', 
                user = 'root', 
                password = passwd,
                database = 'retail_store'
                )
            cursor1 = mydb1.cursor()
            cursor1.execute(query1, multi = True)
        except Exception as e:
            print(e)
            print("Permission already granted to user "+user_id+" exist")


