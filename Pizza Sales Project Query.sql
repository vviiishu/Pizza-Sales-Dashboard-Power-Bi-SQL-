create database project;
use project;
select * from pizza_sales;
select sum(total_price) from pizza_sales;
select sum(total_price)/count(distinct(order_id)) from pizza_sales;
select sum(quantity) from pizza_sales;
select count(distinct(order_id)) from pizza_sales;
select cast( sum(quantity)/count(distinct(order_id))as decimal(10,2)) from pizza_sales;
select dayname(order_date)as order_day,count(distinct(order_id)) as total_order
from pizza_sales
group by 1;
select monthname(order_date)as order_day,count(distinct(order_id)) as total_order
from pizza_sales
group by 1;
select pizza_category,cast(sum(total_price) * 100/(select sum(total_price) from pizza_sales) 
as decimal(10,2)) as "percent sales by pizza catg" 
from pizza_sales
group by 1;
select pizza_size,cast(sum(total_price) * 100/(select sum(total_price) from pizza_sales) 
as decimal(10,2)) as "percent sales by pizza size" 
from pizza_sales
group by 1;
select pizza_category,sum(quantity) as "total pizza sold by catg"
from pizza_sales
group by 1;
select pizza_name,sum(quantity) as "total quantity sold"
from pizza_sales
group by 1
order by sum(quantity) desc
limit 5;
select pizza_name,sum(quantity) as "total quantity sold"
from pizza_sales
group by 1
order by sum(quantity) 
limit 5;




















