# 🍕 Pizza Sales SQL Analysis

SQL allows you to efficiently store, manipulate, and retrieve data from databases. This project demonstrates **data analysis on pizza sales** using SQL by creating a relational database, importing sample data, and performing queries to extract business insights.

---

## 🗂 Database Overview

**Database Name:** `PizzaHut`  

**Tables and Columns:**

1. **order_details**  
   - `order_details_id` (Primary Key)  
   - `order_id` (Foreign Key → orders)  
   - `pizza_id` (Foreign Key → pizzas)  
   - `quantity`  

2. **orders**  
   - `order_id` (Primary Key)  
   - `order_date`  
   - `order_time`  

3. **pizza_types**  
   - `pizza_type_id` (Primary Key)  
   - `name`  
   - `category`  
   - `ingredients`  

4. **pizzas**  
   - `pizza_id` (Primary Key)  
   - `pizza_type_id` (Foreign Key → pizza_types)  
   - `size`  
   - `price`  

> The tables are interrelated using primary and foreign keys to maintain data consistency.

---

## 🛠 Steps

1. **Database Creation:**  
   - Created the `PizzaHut` database.  

2. **Table Creation:**  
   - Designed the tables `order_details`, `orders`, `pizza_types`, and `pizzas` with proper relationships.  

3. **Data Import:**  
   - Imported sample pizza sales data from a spreadsheet into the tables.  

4. **Data Analysis:**  
   - Used `SELECT` queries to retrieve and analyze data.  
   - Example analyses:  
     - Total pizzas sold per day.  
     - Average pizzas per order.  
     - Most popular pizzas by type or size.  
     - Total revenue per day or per pizza type.  
     - Customer order trends over time.  


