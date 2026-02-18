-- Project documentation

-- Basic Queries: 
-- Query 1. List all users:
SELECT * FROM Users;

-- Query 2. List all products in Electronics
SELECT * FROM Products WHERE category='Electronics';

-- Query 3. Get all orders of user Alice
SELECT * FROM Orders WHERE user_id=1;

-- Joins Queries:
-- Query 4. Get orders with product details:
SELECT o.order_id, u.first_name, p.name, oi.quantity, oi.price FROM Orders o JOIN Users u ON o.user_id = u.user_id, JOIN OrderItems oi ON o.order_id = oi.order_id, JOIN Products p ON oi.product_id = p.product_id;

-- Query 5. Get average rating per product:
SELECT p.name, AVG(r.rating) as avg_rating FROM Reviews r JOIN Products p ON r.product_id=p.product_id GROUP BY p.product_id;

-- Aggregation Queries:
-- Query 6. Total sales per product:
SELECT p.name, SUM(oi.quantity * oi.price) as total_sales FROM OrderItems oi JOIN Products p ON oi.product_id = p.product_id GROUP BY p.product_id;

-- Query 7. Get number of orders per user:
 SELECT u.first_name, COUNT(o.order_id) as orders_count FROM Orders o JOIN Users u ON o.user_id = u.user_id GROUP BY u.user_id;

-- Subqueries:
-- Query 8. Products that have never been ordered:
SELECT * FROM Products WHERE product_id NOT IN (SELECT product_id FROM OrderItems);

-- Query 9. Users who ordered more than once:
SELECT u.first_name, COUNT(o.order_id) as order_count FROM Orders o JOIN Users u ON o.user_id=u.user_id GROUP BY u.user_id HAVING order_count>1;
