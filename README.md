# 🍕 Pizza Sales SQL Analysis

SQL allows you to efficiently store, manipulate, and retrieve data from databases. This project demonstrates **data analysis on pizza sales** using SQL by creating a relational database, importing sample data, and performing queries to extract business insights.

---
Steps

First, a database named PizzaHut was created. In this database, the following tables were created: order_details, orders, pizza_types, and pizzas. These tables are inter-related with the below keys.

The order_details table has order_details_id as Primary Key and columns order_id, pizza_id, quantity.

The orders table has order_id as Primary Key and columns order_date, order_time.

The pizza_types table has pizza_type_id as Primary Key and columns name, category, ingredients.

The pizzas table has pizza_id as Primary Key and columns pizza_type_id, size, price.

The required values were imported from a spreadsheet into the tables.

For all the next queries, SELECT was used to retrieve data from the tables.Based on the requirement of the other queries the questions are solved to get the desired solution.




