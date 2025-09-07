# Pizza-Sales-SQL
SQL project analyzing pizza sales data
# Analysis-with-SQL (Pizza Sales)

SQL helps you to easily get information from data with high efficiency. To manipulate the data in databases—like Create, Read, Update, and Delete—we use SQL queries. SQL is a standard language for storing, manipulating, and retrieving data in databases.

---

## Steps

First, a **database named `PizzaHut`** was created. In this database, the following tables were created: `order_details`, `orders`, `pizza_types`, and `pizzas`. These tables are inter-related with the below keys.

- **order_details** table has `order_details_id` as Primary Key and columns `order_id`, `pizza_id`, `quantity`.  
- **orders** table has `order_id` as Primary Key and columns `order_date`, `order_time`.  
- **pizza_types** table has `pizza_type_id` as Primary Key and columns `name`, `category`, `ingredients`.  
- **pizzas** table has `pizza_id` as Primary Key and columns `pizza_type_id`, `size`, `price`.  

The required values were **imported from a spreadsheet** into the tables.

For all the next queries, **SELECT** was used to retrieve data from the tables. Based on requirements, various queries were written to get the desired results, such as:  

- Total pizzas sold per day  
- Average pizzas per order  
- Most popular pizza types and sizes  
- Total revenue per day or per pizza type  
- Customer order trends  

---

## Project Structure

