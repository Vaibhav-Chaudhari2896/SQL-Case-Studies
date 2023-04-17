-- SQL CHALLENGE 1: DANNY'S DINNER 

-- Create a new database  to work in 
CREATE DATABASE sql_challenge_1;

USE sql_challenge_1;


--Creating the necessary tables

CREATE TABLE sales (
					"customer_id" VARCHAR(1),
					"order_date" DATE,
					"product_id" INT
					); 

-- Inserting values in sales table 
INSERT INTO sales 
VALUES 
		  ('A', '2021-01-01', '1'),
		  ('A', '2021-01-01', '2'),
		  ('A', '2021-01-07', '2'),
		  ('A', '2021-01-10', '3'),
		  ('A', '2021-01-11', '3'),
		  ('A', '2021-01-11', '3'),
		  ('B', '2021-01-01', '2'),
		  ('B', '2021-01-02', '2'),
		  ('B', '2021-01-04', '1'),
		  ('B', '2021-01-11', '1'),
		  ('B', '2021-01-16', '3'),
		  ('B', '2021-02-01', '3'),
		  ('C', '2021-01-01', '3'),
		  ('C', '2021-01-01', '3'),
		  ('C', '2021-01-07', '3');
 
 -- Creating table menu
 CREATE TABLE menu (
					"product_id" INT,
					"product_name" VARCHAR(10),
					"price" INT
					);

-- Inserting values in menu table 
INSERT INTO menu 
VALUES
	('1', 'sushi', '10'),
	('2', 'curry', '15'),
	('3', 'ramen', '12');

-- Creating table members
CREATE TABLE members (
			"customer_id" VARCHAR(1),
			"join_date" DATE
					);

-- Inserting values in members table
INSERT INTO	members
	VALUES
	    ('A', '2021-01-07'),
		('B', '2021-01-09');	


-- Viewing all the data in the tables
SELECT * FROM sales;
SELECT * FROM menu;
SELECT * FROM members;


--------------------------------------------------------------
--  QUESTIONS

--1.) What is the total amount each customer spent at the restarant?

SELECT customer_id, SUM(price) Total_Spent
FROM sales s JOIN menu m 
ON s.product_id = m.product_id
GROUP BY customer_id;


--2.) How many days has each customer visited the restaurant?

SELECT customer_id, COUNT(DISTINCT(order_date)) total_days_visited
FROM sales
GROUP BY customer_id;


--3.) What was the first item from the menu purchased by the each customer?

SELECT customer_id, product_name
FROM
(
	SELECT customer_id, product_name,
			RANK() OVER (PARTITION BY customer_id ORDER BY order_date) number
	FROM sales s JOIN menu m
	ON s.product_id = m.product_id
	GROUP BY customer_id, order_date, product_name
) temp
WHERE number = 1;


-- 4.)  What is the most purchased item on the menu and how many times was it purchased by all customers?

SELECT TOP 1 (product_name), count(*) Total_purchases
FROM sales s JOIN menu m 
ON s.product_id = m.product_id
GROUP BY product_name
ORDER BY Total_purchases DESC;


-- 5.) Which item was the most popular for each customer?

SELECT customer_id, product_name, total_count
FROM
(
	SELECT customer_id, product_name, COUNT(product_name) total_count, 
			DENSE_RANK() OVER (PARTITION BY customer_id ORDER BY COUNT(product_name) DESC) rank
	FROM sales s JOIN menu m
	ON s.product_id = m.product_id
	GROUP BY customer_id, product_name
) temp1
WHERE rank = 1;


--6.) Which item was purchased first by the customer after they became a member?

WITH sales_member_cte AS
(
	SELECT s.customer_id, order_date,product_id, RANK() OVER(PARTITION BY s.customer_id ORDER BY order_date) rank 
	FROM sales s JOIN members m
	ON s.customer_id = m.customer_id
	WHERE order_date >= join_date
)

SELECT customer_id, order_date, product_name
FROM sales_member_cte sm JOIN menu m
ON sm.product_id = m.product_id
WHERE rank = 1;


--7.) Which item was purchased just before the customer became a member?

WITH last_order_before_join_cte AS
(
	SELECT s.customer_id, order_date, product_id, 
			RANK() OVER(PARTITION BY s.customer_id ORDER BY order_date DESC) rank
	FROM sales s JOIN members m
	ON s.customer_id = m.customer_id
	WHERE order_date < join_date
)

SELECT customer_id, order_date, product_name
FROM last_order_before_join_cte temp3 JOIN menu m
ON temp3.product_id = m.product_id
WHERE rank = 1;


--8.) What is the total items and amount spent for each member before they became a member?

SELECT s.customer_id, count(s.product_id) Count_products, SUM(price) Total_price
FROM sales s JOIN members m 
ON s.customer_id = m.customer_id 
JOIN menu m1 
ON s.product_id = m1.product_id
WHERE order_date < join_date
GROUP BY s.customer_id;


--9.) If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?

SELECT customer_id, 
	SUM(CASE 
		WHEN product_name = 'sushi' THEN price * 20 
		ELSE price * 10 END) Points
FROM sales s JOIN menu m
ON s.product_id = m.product_id
GROUP BY customer_id;


--10.) In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi 
-- how many points do customer A and B have at the end of January?

SELECT s.customer_id, 
	SUM(CASE WHEN product_name = 'sushi' THEN 20 * price
		WHEN order_date BETWEEN join_date AND DATEADD(DAY, 6, join_date) THEN 20 * price
		ELSE 10 * price END) Points
FROM sales s JOIN menu m
	ON s.product_id = m.product_id
JOIN members m1 
	ON s.customer_id = m1.customer_id
WHERE order_date < '2021-01-31'
GROUP BY s.customer_id;


----------------------------------------------------------------------------------------------------
-- BONUS QUESTIONS

-- Join all the Things

SELECT s.customer_id, order_date, product_name, price, 
		CASE WHEN order_date >= join_date THEN 'Y' 
		ELSE 'N' END is_member
FROM sales s FULL JOIN menu m
	ON s.product_id = m.product_id
FULL JOIN members m1 
	ON s.customer_id = m1.customer_id ;


--Rank all the Things
WITH all_things_cte AS
(
	SELECT s.customer_id, order_date, product_name, price, 
			CASE WHEN order_date >= join_date THEN 'Y' 
			ELSE 'N' END is_member
	FROM sales s FULL JOIN menu m
		ON s.product_id = m.product_id
	FULL JOIN members m1 
		ON s.customer_id = m1.customer_id 
)

SELECT *, 
	CASE WHEN is_member = 'Y' THEN RANK() OVER(PARTITION BY customer_id, is_member ORDER BY order_date)
	ELSE NULL END 
FROM all_things_cte;



--------------------------------------------------------END-------------------------------------------------------------------