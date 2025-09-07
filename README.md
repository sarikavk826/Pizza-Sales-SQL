🍕 Pizza Sales SQL Analysis

SQL allows you to efficiently store, manipulate, and retrieve data from databases. This project demonstrates data analysis on pizza sales using SQL by creating a relational database, importing sample data, and performing queries to extract business insights.

Database Overview

Database Name: PizzaHut

Tables and Columns:

order_details

order_details_id (Primary Key)

order_id (Foreign Key → orders)

pizza_id (Foreign Key → pizzas)

quantity

orders

order_id (Primary Key)

order_date

order_time

pizza_types

pizza_type_id (Primary Key)

name

category

ingredients

pizzas

pizza_id (Primary Key)

pizza_type_id (Foreign Key → pizza_types)

size

price

