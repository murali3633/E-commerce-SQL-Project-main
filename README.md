# E-commerce SQL Project 

This project demonstrates a basic E-commerce database using SQLite. It includes scripts for creating the database schema, populating it with sample data, and executing various SQL queries to analyze the data.

## Prerequisites  

-   [SQLite](https://www.sqlite.org/index.html): Make sure you have SQLite installed and accessible from your command line.
  
## Database Schema  

The database consists of the following tables:
 
*   **Users**: Stores customer information.
    *   `user_id` (PK)
    *   `first_name`, `last_name`
    *   `email` (Unique)
    *   `Signup_date`
*   **Products**: Stores product details.
    *   `product_id` (PK)
    *   `name`, `category`
    *   `price`, `stock`
*   **Orders**: Stores order information.
    *   `order_id` (PK)
    *   `user_id` (FK -> Users)
    *   `order_date`, `total_amount`
*   **OrderItems**: Stores items within each order.
    *   `order_item_id` (PK)
    *   `order_id` (FK -> Orders)
    *   `product_id` (FK -> Products)
    *   `quantity`, `price`
*   **Reviews**: Stores product reviews.
    *   `review_id` (PK)
    *   `user_id` (FK -> Users)
    *   `product_id` (FK -> Products)
    *   `rating`, `comment`, `review_date`

## Getting Started

### 1. Initialize the Database

Run the `create_tables.sql` script to set up the tables. This will create a file named `E_commerce.db`.

```bash
sqlite3 E_commerce.db < create_tables.sql
```

### 2. Insert Sample Data

Populate the tables with sample data using `insert_data.sql`.

```bash
sqlite3 E_commerce.db < insert_data.sql
```

### 3. Run Queries

Execute the provided queries to analyze the data.

```bash
sqlite3 E_commerce.db < queries.sql
```

You can also open the database interactively:

```bash
sqlite3 E_commerce.db
```

Then run commands like `.tables` or any SQL query.

## Example Queries

Here are a few example queries included in `queries.sql`:

**List all products in Electronics:**
```sql
SELECT * FROM Products WHERE category='Electronics';
```

**Get average rating per product:**
```sql
SELECT p.name, AVG(r.rating) as avg_rating 
FROM Reviews r 
JOIN Products p ON r.product_id=p.product_id 
GROUP BY p.product_id;
```

**Total sales per product:**
```sql
SELECT p.name, SUM(oi.quantity * oi.price) as total_sales 
FROM OrderItems oi 
JOIN Products p ON oi.product_id = p.product_id 
GROUP BY p.product_id;
```

## Project Structure

-   `create_tables.sql`: SQL script to create the database schema.
-   `insert_data.sql`: SQL script to insert sample data.
-   `queries.sql`: collection of SQL queries for data analysis.
-   `tripewife/`: Directory containing project archives.
