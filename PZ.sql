use pizzahut;

-- Retrieve the total number of orders placed.

Select count(Order_id) as Total_no_of_orders
from orders;

-- Calculate the total revenue generated from pizza sales.

Select round(sum(o.Quantity*p.price),2) as Total_revenue
from order_details o
join pizzas p
on p.Pizza_Id = o.Pizza_Id;

-- Identify the highest-priced pizza.
Select p2.name, p1.price
from pizzas p1
join pizza_types p2
on p1.pizza_type_id = p2.pizza_type_id
order by p1.price desc
limit 1;


-- Identify the most common pizza size ordered.

Select p.size, count(*) as Total_count
from order_details o
join pizzas p
on p.pizza_id = o.pizza_id
group by p.size
order by Total_count desc;

-- List the top 5 most ordered pizza types along with their quantities.

Select t.pizza_type_id, t.name, sum(o.Quantity) as total_qty
from order_details o
join pizzas p
on o.Pizza_Id = p.Pizza_Id
join pizza_types t
on t.pizza_type_id = p.pizza_type_id
group by 1, 2
order by 3 desc
limit 5;


-- Join the necessary tables to find the total quantity of each pizza category ordered.

Select t.category, sum(o.Quantity) as total_qty
from order_details o
join pizzas p
on o.Pizza_Id = p.Pizza_Id
join pizza_types t
on t.pizza_type_id = p.pizza_type_id
group by 1
order by 2 desc;


-- Determine the distribution of orders by hour of the day.

select hour(o2.Order_time) as hour, count(*) as 'Total Orders count'
from order_details o1
join orders o2
on o1.Order_id = o2.Order_id
group by hour(Order_time);


-- Join relevant tables to find the category-wise distribution of pizzas.
Select category, count(*) as total_count
from pizza_types
group by category;


-- Group the orders by date and calculate the average number of pizzas ordered per day.
with date_wise_sum as (
select o.Order_date, sum(od.Quantity) as total_qty
from order_details od
join orders o
on od.Order_Id = o.Order_Id
group by 1
)
Select round(avg(total_qty),0) as Avg_ordered_qty
from date_wise_sum;


-- Determine the top 3 most ordered pizza types based on revenue.

Select t.pizza_type_id , t.name, sum(o.Quantity*p.price) as 'Total Sales'
from order_details o
join pizzas p
on o.Pizza_Id = p.Pizza_Id
join pizza_types t
on t.pizza_type_id = p.pizza_type_id
group by 1, 2
order by 3 desc
limit 3;


-- Calculate the percentage contribution of each pizza category to total revenue.

Select t.category, round(sum(o.Quantity*p.price),2) as 'Total Sales',
round(sum(o.Quantity*p.price)/ (select sum(o.Quantity*p.price) from order_details o
							join pizzas p
							on o.Pizza_Id = p.Pizza_Id)*100,2) as 'Percentage contribution'
from order_details o
join pizzas p
on o.Pizza_Id = p.Pizza_Id
join pizza_types t
on t.pizza_type_id = p.pizza_type_id
group by 1;


-- Analyze the cumulative revenue generated over time.

with order_datewise_sales as (
Select o.Order_date, round(sum(od.Quantity*p.price),2) as total_sales
from orders o
join order_details od
on  od.Order_id = o.Order_id
join pizzas p
on od.pizza_id = p.pizza_id
group by 1
)

Select *, sum(total_sales) over (order by Order_date) as 'Cumulative Sales'
from order_datewise_sales;


-- Determine the top 3 most ordered pizza types based on revenue for each pizza category.
with total_sales as (
Select  t.category, t.pizza_type_id , t.name, sum(o.Quantity*p.price) as total_Sales
from order_details o
join pizzas p
on o.Pizza_Id = p.Pizza_Id
join pizza_types t
on t.pizza_type_id = p.pizza_type_id
group by 1,2, 3
),
 rnking  as (
Select *, dense_rank() over(partition by category order by total_Sales desc) as rk
from total_sales
)
Select * from rnking
where rk <4;