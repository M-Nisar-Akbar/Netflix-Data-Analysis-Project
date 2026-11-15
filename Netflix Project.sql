-- Total Customers
select count(*) as Total_Customers
from netflix_customers;

select count(*) as Active_Customers
from netflix_customers
where Account_Status = 'Active';
-- Customers By Subscription Plan
select Subscription_Plan, count(*) as customers
from netflix_customers
group by Subscription_Plan
order by customers desc;
-- Revenue By Subscription Plan
select Subscription_Plan,
sum(Customer_Revenue) as Revenue
from netflix_customers
group by Subscription_Plan
order by Revenue desc;
-- Popular Genre
select genre, count(*) as views
from netflix_customers
group by genre
order by views desc;
-- Country Vise Customers
select country, count(*) as customers
from netflix_customers
group by country
order by customers desc;
-- Device Usage
select device, count(*) as users
from netflix_customers
group by device
order by users desc;

-- Average watch hours by plan
select subscription_plan,
round(avg(Watch_Hours),2) as avg_watch_hours
from netflix_customers
group by Subscription_Plan;

-- Top Ten Customers By Revenue
select customer_name, customer_revenue
from netflix_customers
order by Customer_Revenue desc
limit 10;

-- Movie Vs TV Show
select content_type,
count(*) as total
from netflix_customers
group by Content_Type;

-- Avg Rating By Genre
select genre,
round(avg(avg_rating), 2) as avg_rating
from netflix_customers
group by genre
order by Avg_Rating desc;

-- Active Status
select account_status,
count(*) as customers
from netflix_customers
group by Account_Status;

