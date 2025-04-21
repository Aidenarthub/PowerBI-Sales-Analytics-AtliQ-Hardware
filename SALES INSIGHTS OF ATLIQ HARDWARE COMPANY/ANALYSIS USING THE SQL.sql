
-- Selecting  DataBase

use sales

-- ************************  Exploring the tables  ********************************************

-- customers table

select * from customers

select COUNT(*) as Total_Customers from customers -- There are total 38 customers

-- date table

select * from date

select min(year) as start, MAX(year) as last from date -- 4 Years of data is there

-- markets table

select * from markets --There are total 17 markets are there, 15 from india and 2 is from new york and paris

-- products table

select * from products

select distinct COUNT(*) as Number_of_Products  from products -- There are total 279 unique products

select 
product_type,
COUNT(product_type) as Number_of_Products -- There are only two types of Products Own_brand and Distribution
from products							  -- 191 Own Brand
group by product_type					  -- 88 Distribution
order by Number_of_Products desc

-- transactions

select * from transactions -- We have total 1,48,395 records

select COUNT(*) as Total_Transactions_Records from transactions



-- *****************************  Data Analysis Using SQL  *******************************

--1. Show all customer records

select * from customers

--2. Show total number of customers

select COUNT(custmer_name) as Total_Customers from customers

--3. Show transactions for Chennai market (market code for chennai is Mark001)

select 
ts.*,m.markets_name from 
transactions as ts
inner join markets as m
on ts.market_code=m.markets_code
where m.markets_name='Chennai'


-- 4. Show distinct product codes that were sold in chennai

select 
distinct product_code 
from transactions as ts
inner join markets as m
on ts.market_code=m.markets_code
where m.markets_name='Chennai'


-- 5. Show transactions where currency is US dollars

select * from transactions
where currency='USD'

-- 6. Show transactions in 2020m, join by date table

-- solution 1

select COUNT(*) from transactions
where YEAR(order_date)=2020           

-- solution 2

select COUNT(*) from transactions as ts
inner join date as dt
on ts.order_date=dt.date
where dt.year=2020

-- 7. Show total revenue in year 2020,

 select SUM(ts.sales_amount) as Revenue_in_2020 from transactions as ts
 inner join date as dt
 on ts.order_date=dt.date
 where dt.year=2020

-- 8. Show total revenue in year 2020, January Month,

select SUM(ts.sales_amount) as Revenue_2020_Jan from transactions as ts
inner join date as dt
on ts.order_date=dt.date
where dt.year= 2020 and dt.month_name='January'


-- 9 Show total revenue in year 2020 in Chennai

select sum(ts.sales_amount) as Total_Revenue_2020_Chennai from transactions as ts
inner join date as dt
on ts.order_date=dt.date
inner join markets as m
on ts.market_code=m.markets_code
where dt.year=2020 and m.markets_name='Chennai'


































































