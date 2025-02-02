-- CREATE TABLE retail_sales
-- (
--   transactions_id INT PRIMARY KEY NOt NULL UNIQUE,
--   sale_date DATE,
--   sale_time TIME,
--   customer_id INT,
--   gender VARCHAR(50),
--   age INT,
--   category  VARCHAR(20),
--   quantiy INT,
--   price_per_unit FLOAT,
--   cogs FLOAT,
--   total_sale FLOAT

-- );


-- DATA CLEARNING
-- SELECT * FROM retail_sales
--  where 
-- transactions_id IS NULL
--   OR
--   sale_date  IS NULL
--   OR
--   sale_time IS NULL
--   OR
--   customer_id  IS NULL
--   OR
--   gender IS NULL
--   OR
--   age  IS NULL
--   OR
--   category IS NULL
--   OR
--   quantiy IS NULL
--   OR
--   price_per_unit  IS NULL
--   OR
--   cogs  IS NULL
--   OR
--   total_sale  IS NULL

  
--  DELETE FROM retail_sales 
--  where 
--   transactions_id IS NULL
--   OR
--   sale_date  IS NULL
--   OR
--   sale_time IS NULL
--   OR
--   customer_id  IS NULL
--   OR
--   gender IS NULL
--   OR
--   age  IS NULL
--   OR
--   category IS NULL
--   OR
--   quantiy IS NULL
--   OR
--   price_per_unit  IS NULL
--   OR
--   cogs  IS NULL
--   OR
--   total_sale  IS NULL
 

	-- How many sales we have?

-- select count(*) AS Total_sale from retail_sales ;


	-- how many unique customers we have?
-- select count(DISTINCT(customer_id)) AS Total_sale from retail_sales ;

-- select DISTINCT category from retail_sales ;

-- Business Key Probles & Answer

-- Q.1  Write a SQL query to retrive all column for sales made on '2022-11-05'

-- SELECT COUNT(*) FROM retail_sales
-- where sale_date = '2022-11-05';

-- write a SQL query to retrive all transaction where category is "clothering " ans the quantity sold is more than 10 in the month of Nov-2022

-- SELECT * FROM retail_sales 
-- WHERE 
-- category = 'Clothing' and
-- quantiy >= 4 and
-- sale_date BETWEEN '2022-11-01' AND '2022-11-30'
-- 
-- AND TO_CHAR(sale_date, 'YYYY-MM') = '2022-11'
;

-- Q.3 Write a sql query to calculate the total sales (total_sale) for ecah category.

-- SELECT 
-- category,
-- sum(total_sale) as net_sale
-- FROM retail_sales 
-- GROUP BY 1

-- Q.4 Write a sql query to find the average age of customers who purchased items from the 'Beauty' category.

-- SELECT ROUND(AVG(age),2)  FROM retail_sales 
-- where category ='Beauty'

-- Q .5 Write a SQL query to find all transactions where the total_sale is grater than 1000.

-- SELECT *
-- FROM retail_sales 
-- where total_sale > 1000

-- Q.6 Write a sql query to find the total number of tranction ( transaction_id) made by each gender in each category

-- SELECT gender, category, COUNT(*)
-- FROM retail_sales 
-- GROUP BY gender, category
--  ORDER BY 2



-- Q.7 write a SQL query to find the top 5 customer based on the highest total sales

-- SELECT 
-- customer_id ,
-- sum(total_sale) as total_sale
-- FROM retail_sales
-- GROUP BY 1
-- ORDER BY 2 desc
-- limit 5

-- Q.8 Write a SQL query to  find the number of unique customers who purchased items from each category.
-- SELECT category,count(DISTINCT(customer_id))
-- FROM retail_sales
-- GROUP BY 1
-- ;

