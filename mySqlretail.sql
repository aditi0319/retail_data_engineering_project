select * from df_orders;

# Find top 10 highest revenue generating products
SELECT product_id, SUM(sale_price) AS sales
FROM df_orders
GROUP BY product_id
ORDER BY sales Desc LIMIT 10;

# Top 5 selling products in each regions
WITH CTE AS(
SELECT region,product_id, sum(sale_price) AS sales 
FROM df_orders
GROUP BY region ,product_id
)                                     --  here two cte are used
SELECT * FROM(
SELECT *,
ROW_NUMBER() OVER (PARTITION BY region ORDER BY sales desc) AS rn
FROM CTE) A
WHERE rn <=5;

# FIND MONTH OVER MONTH GROWTH COMPARISION FOR 2022 AND 2023 SALES eg: JAN 2022 V/S 2023
with cte as(
select year(order_date) as order_year, month(order_date) as order_month, sum(sale_price) as sales from df_orders
group by year(order_date), month(order_date)
)
select order_month,
sum( case when order_year = 2022 then sales else 0 end) as sales_2022,
sum( case when order_year = 2023 then sales else 0 end) as sales_2023
from cte
group by order_month
order by order_month;

# FOR EACH CATEGORY WHICH MONTH HAD HIGHEST SALES
with cte as(
select category,sum(sale_price) as sales ,  DATE_FORMAT(ORDER_DATE,'%Y%m') as order_month from df_orders
group by category,order_month
)
select * from(
select *, rank() over(partition by category ORDER BY sales desc ) as r from cte ) a
where r=1;

# Which subcategory had highest growth by profit in 2023 compared to 2022

with cte as(
select sub_category, year(order_date) as order_year, sum(sale_price) as sales from df_orders
group by order_year, sub_category
)
,
 cte2 as(
select sub_category,
sum( case when order_year = 2022 then sales else 0 end) as sales_2022,
sum( case when order_year = 2023 then sales else 0 end) as sales_2023
from cte group by sub_category) 
select  *,
round((sales_2023-sales_2022)*100/sales_2022 ,2) as growth
from cte2
order by (sales_2023-sales_2022)*100/sales_2022  desc limit 1

