-- SQL script to create tables

-- The code to populate the Users table is as follows:
INSERT INTO Users VALUES (1, 'Alice', 'Smith', 'alice@gmail.com','2025-01-15'),
(2,'Bob', 'Johnson', 'Bob@hotmail.com', '2025-02-20'),
(3, 'Charlie', 'Lee', 'Charlie@gmail.com', '2025-03-05');

-- The code to IGNORE or REPLACE in the Users table is as follows:
INSERT OR IGNORE INTO Users (user_id, first_name, last_name, email, signup_date) 
VALUES (1,'Alice','Smith','alice@gmail.com','2025-01-15'),
(2,'Bob','Johnson','bob@gmail.com','2025-02-20'),
(3,'Charlie','Lee','charlie@gmail.com','2025-03-05');

INSERT OR REPLACE INTO Users (user_id, first_name, last_name, email, signup_date)
VALUES(1,'Alice','Smith','alice@gmail.com','2025-01-15'),
(2,'Bob','Johnson','bob@gmail.com','2025-02-20'),
(3,'Charlie','Lee','charlie@gmail.com','2025-03-05');

-- The code to see Users table:
SELECT * FROM Users;


-- The code to populate the Products table is as follows:
INSERT INTO Products VALUES (1,'Laptop','Electronics',1200,10),
(2,'Smartphone','Electronics',800,20),
(3,'Coffee Maker','Home Appliances',150,15),
(4,'Headphone','Electronics',200,25);

-- The code to see Products table:
SELECT * FROM Products;


-- The code to populate the Orders table is as follows:
INSERT INTO Orders VALUES (1,1,'2025-04-01',1400),
(2,2,'2025-04-03',950),
(3,1,'2025-04-05',200);

-- The code to see Orders table:
SELECT * FROM Orders;


-- The code to populate the OrderItems table is as follows:
INSERT INTO OrderItems VALUES (1,1,1,1,1200),
(2,1,4,1,200),
(3,2,2,1,800),
(4,2,4,1,150),
(5,3,4,1,200);

-- The code to see OrderItems table:
SELECT * FROM OrderItems;


-- The code to populate the Reviews table is as follows:
INSERT INTO Reviews VALUES (1,1,1,5,'Great laptop','2025-04-02'),
(2,2,2,4,'Good phone','2025-04-04'),
(3,3,3,3,'Average coffee maker','2025-04-06');

-- The code to see Reviews table:
SELECT * FROM Reviews;
