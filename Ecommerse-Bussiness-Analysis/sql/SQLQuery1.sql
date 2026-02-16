create database d_project
select * from orders_superstore
update  orders_superstore
set returned='yes'
where returned='1'
alter table orders_superstore
alter column returned varchar(5)

--Total sales
select round(sum(Sales),3) as Tota_Sales from orders_superstore

--Sales by Region 
select Region,round(sum(Sales),3) as total_sale from orders_superstore
group by Region

--Top performing product
select top 5 Sub_Category,round(sum(Profit),3) as Total_Profit from orders_superstore
group by Sub_Category
order by Total_Profit desc

--Total profit
select round(sum(Profit),3) as Overall_Profit from orders_superstore

--most Profitable country
select top 1 Country,sum(Profit) as Overall_profit from orders_superstore
group by country

--most returned product
select top 1 Sub_Category,count(*) as Total_returns 
from orders_superstore
where returned='yes'
group by Sub_Category
order by Total_returns desc

--Overall returns
select count(*) as Overall_returns 
from orders_superstore
where returned='yes'

--sales per year
select o.year,round(sum(Sales),3) as Total_sales from orders_superstore as o
group by o.year
order by o.year

--top 5 customers 
select top 5 Customer_ID,Customer_Name,round(sum(sales),2) as purchase_amount from orders_superstore
group by Customer_ID,Customer_Name
order by purchase_amount desc


--most Profitable region
select top 1 country, Region,round(sum(Profit),3) as Overall_profit from orders_superstore
group by country,Region
order by Overall_profit desc

