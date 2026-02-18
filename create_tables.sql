-- SQL script to create tables

-- The code to create (or open) the database file as follows:
.open E_commerce.db
  
  
-- The code to create the table 1/5 "Users" which has the customer info as follows:
CREATE TABLE Users (user_id INTEGER PRIMARY KEY, first_name TEXT, last_name TEXT, email TEXT UNIQUE, Signup_date DATE);


-- The code to create the table 2/5 "Products" which has the items for sale as follows:
CREATE TABLE Products (product_id INTEGER PRIMARY KEY, name TEXT, category TEXT, price REAL, stock INTEGER);


-- The code to create the table 3/5 "Orders" which comprises the orders placed by users as follows:
CREATE TABLE Orders (order_id INTEGER PRIMARY KEY, user_id INTEGER, order_date DATE, total_amount REAL, FOREIGN KEY(order_id) REFERENCES Users(user_id));


-- The code to create the table 4/5 "OrderItems" which comprises the items placed by users in each order as follows:
CREATE TABLE OrderItems ( order_item_id INTEGER PRIMARY KEY, order_id INTEGER, product_id INTEGER, quantity INTEGER, price REAL, FOREIGN KEY(order_id) REFERENCES Orders(order_id), FOREIGN KEY(product_id) REFERENCES Products(product_id));


-- The code to create the table 5/5 "Reviews" which comprises product reviews by the users as follows:
CREATE TABLE Reviews (review_id INTEGER PRIMARY KEY, user_id INTEGER, product_id INTEGER, rating INTEGER, comment TEXT, review_date DATE, FOREIGN KEY(user_id) REFERENCES Users(user_id), FOREIGN KEY(product_id) REFERENCES Products(product_id));


-- The code to show tables created as follows:
.tables
