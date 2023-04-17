-- Creating database to work in
create database sql_challenge_2;

-- Using the database
use sql_challenge_2

-- Create tables
DROP TABLE IF EXISTS runners;
CREATE TABLE runners (
  "runner_id" INTEGER,
  "registration_date" DATE
);
INSERT INTO runners
  ("runner_id", "registration_date")
VALUES
  (1, '2021-01-01'),
  (2, '2021-01-03'),
  (3, '2021-01-08'),
  (4, '2021-01-15');


DROP TABLE IF EXISTS customer_orders;
CREATE TABLE customer_orders (
  "order_id" INTEGER,
  "customer_id" INTEGER,
  "pizza_id" INTEGER,
  "exclusions" VARCHAR(4),
  "extras" VARCHAR(4),
  "order_time" DATETIME
);
INSERT INTO customer_orders
  ("order_id", "customer_id", "pizza_id", "exclusions", "extras", "order_time")
VALUES
  ('1', '101', '1', '', '', '2020-01-01 18:05:02'),
  ('2', '101', '1', '', '', '2020-01-01 19:00:52'),
  ('3', '102', '1', '', '', '2020-01-02 23:51:23'),
  ('3', '102', '2', '', 'null', '2020-01-02 23:51:23'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '2', '4', '', '2020-01-04 13:23:46'),
  ('5', '104', '1', 'null', '1', '2020-01-08 21:00:29'),
  ('6', '101', '2', 'null', 'null', '2020-01-08 21:03:13'),
  ('7', '105', '2', 'null', '1', '2020-01-08 21:20:29'),
  ('8', '102', '1', 'null', 'null', '2020-01-09 23:54:33'),
  ('9', '103', '1', '4', '1, 5', '2020-01-10 11:22:59'),
  ('10', '104', '1', 'null', 'null', '2020-01-11 18:34:49'),
  ('10', '104', '1', '2, 6', '1, 4', '2020-01-11 18:34:49');


DROP TABLE IF EXISTS runner_orders;
CREATE TABLE runner_orders (
  "order_id" INTEGER,
  "runner_id" INTEGER,
  "pickup_time" VARCHAR(19),
  "distance" VARCHAR(7),
  "duration" VARCHAR(10),
  "cancellation" VARCHAR(23)
);
INSERT INTO runner_orders
  ("order_id", "runner_id", "pickup_time", "distance", "duration", "cancellation")
VALUES
  ('1', '1', '2020-01-01 18:15:34', '20km', '32 minutes', ''),
  ('2', '1', '2020-01-01 19:10:54', '20km', '27 minutes', ''),
  ('3', '1', '2020-01-03 00:12:37', '13.4km', '20 mins', NULL),
  ('4', '2', '2020-01-04 13:53:03', '23.4', '40', NULL),
  ('5', '3', '2020-01-08 21:10:57', '10', '15', NULL),
  ('6', '3', 'null', 'null', 'null', 'Restaurant Cancellation'),
  ('7', '2', '2020-01-08 21:30:45', '25km', '25mins', 'null'),
  ('8', '2', '2020-01-10 00:15:02', '23.4 km', '15 minute', 'null'),
  ('9', '2', 'null', 'null', 'null', 'Customer Cancellation'),
  ('10', '1', '2020-01-11 18:50:20', '10km', '10minutes', 'null');


DROP TABLE IF EXISTS pizza_names;
CREATE TABLE pizza_names (
  "pizza_id" INTEGER,
  "pizza_name" TEXT
);
INSERT INTO pizza_names
  ("pizza_id", "pizza_name")
VALUES
  (1, 'Meatlovers'),
  (2, 'Vegetarian');


DROP TABLE IF EXISTS pizza_recipes;
CREATE TABLE pizza_recipes (
  "pizza_id" INTEGER,
  "toppings" TEXT
);
INSERT INTO pizza_recipes
  ("pizza_id", "toppings")
VALUES
  (1, '1, 2, 3, 4, 5, 6, 8, 10'),
  (2, '4, 6, 7, 9, 11, 12');


DROP TABLE IF EXISTS pizza_toppings;
CREATE TABLE pizza_toppings (
  "topping_id" INTEGER,
  "topping_name" TEXT
);
INSERT INTO pizza_toppings
  ("topping_id", "topping_name")
VALUES
  (1, 'Bacon'),
  (2, 'BBQ Sauce'),
  (3, 'Beef'),
  (4, 'Cheese'),
  (5, 'Chicken'),
  (6, 'Mushrooms'),
  (7, 'Onions'),
  (8, 'Pepperoni'),
  (9, 'Peppers'),
  (10, 'Salami'),
  (11, 'Tomatoes'),
  (12, 'Tomato Sauce');


---------------------------------------------------------------------------------------------------------------
-- All tables have been inserted

-- Checking all the tables
SELECT * FROM runners;
SELECT * FROM customer_orders;
SELECT * FROM pizza_names;
SELECT * FROM pizza_recipes;
SELECT * FROM pizza_toppings;

-- Customer_orders and runners_orders tables seems to require some cleanup

-- CLEANING DATA FROM CUSTOMERS ORDERS TABLE
SELECT * FROM customer_orders;
EXEC sp_help customer_orders;

UPDATE customer_orders 
SET exclusions = '' 
WHERE exclusions = NULL or exclusions = 'null';

UPDATE customer_orders 
SET extras = '' 
WHERE extras = NULL or extras = 'null';

----- ------- ---------- ---------- --------- -------- ------
-- CLEANING DATA FROM RUNNERS ORDERS TABLE
SELECT * FROM runner_orders;

UPDATE runner_orders 
SET pickup_time = '' 
WHERE pickup_time = 'null' or pickup_time = NULL;

UPDATE runner_orders 
SET distance = '' 
WHERE distance = 'null' or distance = NULL;
UPDATE runner_orders 
SET distance = TRIM('km' FROM distance)
WHERE distance LIKE '%km';

UPDATE runner_orders 
SET duration = '' 
WHERE duration = 'null' or duration = NULL;
UPDATE runner_orders 
SET duration = TRIM('minutes' FROM duration)
WHERE duration LIKE '%minutes';
UPDATE runner_orders 
SET duration = TRIM('mins' FROM duration)
WHERE duration LIKE '%mins';
UPDATE runner_orders 
SET duration = TRIM('minute' FROM duration)
WHERE duration LIKE '%minute';

UPDATE runner_orders 
SET cancellation = '' 
WHERE cancellation = 'null' or cancellation = NULL or cancellation IS NULL;

-- Checking datatypes of the columns
EXEC sp_help runner_orders;

-- Changing the datatypes 
ALTER TABLE runner_orders
ALTER COLUMN pickup_time DATETIME;
ALTER TABLE runner_orders
ALTER COLUMN distance FLOAT;
ALTER TABLE runner_orders
ALTER COLUMN duration INTEGER;

-- We have cleaned the data
---------------------------------------------------------------------------------------------
--A. PIZZA METRICS

--1. How many pizzas were ordered?
SELECT COUNT(*) Total_pizza_ordered 
FROM customer_orders;


--2. How many unique customer orders were made?
SELECT COUNT(DISTINCT(order_id)) unique_customer_orders
FROM customer_orders;


--3.How many successful orders were delivered by each runner?
SELECT runner_id, COUNT(*) successful_orders
FROM runner_orders
WHERE cancellation = ''
GROUP BY runner_id;


--4. How many of each type of pizza was delivered?
SELECT pizza_name, temp.No_of_pizza
FROM
(
	SELECT co.pizza_id, COUNT(co.pizza_id) No_of_pizza
	FROM customer_orders co
	JOIN runner_orders ro
		ON co.order_id = ro.order_id
	WHERE cancellation = ''
	GROUP BY co.pizza_id
) temp
JOIN pizza_names pn
	ON temp.pizza_id = pn.pizza_id;


--5.How many Vegetarian and Meatlovers were ordered by each customer?
SELECT customer_id, pizza_name, No_of_pizza
FROM
(
SELECT customer_id, pizza_id, COUNT(pizza_id) No_of_pizza
FROM customer_orders co
JOIN runner_orders ro
	ON co.order_id = ro.order_id
GROUP BY co.customer_id, pizza_id
) temp
JOIN pizza_names pn
	ON temp.pizza_id = pn.pizza_id;


--6. What was the maximum number of pizzas delivered in a single order?
SELECT MAX(pizza_count) max_pizza_count
FROM
(
SELECT order_id, COUNT(pizza_id) pizza_count
FROM customer_orders
GROUP BY order_id
) temp;


--7. For each customer, how many delivered pizzas had at least 1 change and how many had no changes?
SELECT customer_id, 
	COUNT(CASE WHEN exclusions = '' AND extras = '' THEN 1 END) No_changes,
	COUNT(CASE WHEN exclusions != '' OR extras != '' THEN 1 END) Atleast_one_change
FROM customer_orders co
JOIN runner_orders ro
	ON co.order_id = ro.order_id
WHERE cancellation = ''
GROUP BY customer_id;


--8. How many pizzas were delivered that had both exclusions and extras?
SELECT COUNT(*) pizza_count_with_exclusions_extras
FROM customer_orders co
JOIN runner_orders ro
ON co.order_id = ro.order_id
WHERE exclusions != '' AND extras != '' AND cancellation = '';


--9. What was the total volume of pizzas ordered for each hour of the day?
SELECT DATEPART(HOUR, [order_time]) Hour_of_day, COUNT(order_id) Total_pizzas
FROM customer_orders
GROUP BY DATEPART(HOUR, [order_time]);
-- Highest volume of pizza are ordered at 13(1pm), 18(6pm), 21(9pm) and 23(11pm)


--10. What was the volume of orders for each day of the week?
SELECT DATEPART(WEEKDAY, [order_time]) Day_Of_Week, COUNT(order_id) Total_pizzas
FROM customer_orders
GROUP BY DATEPART(WEEKDAY, [order_time]);
--- Tuesday = 1

----------------------------------------------------------------------------------------------------------------------
-- RUUNER AND CUSTOMER EXPERIENCE

--1. How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)
SELECT 
	DATEPART(WEEK, DATEADD(YEAR, 1, registration_date)) Week, 
	COUNT(runner_id) Total_runners_signed
FROM runners
GROUP BY DATEPART(WEEK, DATEADD(YEAR, 1, registration_date));


--2. What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order?
SELECT runner_id, AVG(DATEDIFF(MINUTE, order_time, pickup_time)) Avg_Time
FROM runner_orders ro
JOIN customer_orders co
	ON ro.order_id = co.order_id
WHERE cancellation = ''
GROUP BY runner_id;


--3. Is there any relationship between the number of pizzas and how long the order takes to prepare?
WITH TIME_PER_PIZZA_CTE AS 
(
	SELECT 
		COUNT(co.order_id) Pizza_Count, 
		AVG(DATEDIFF(MINUTE, order_time, pickup_time)) Time_to_Prepare
	FROM customer_orders co
	JOIN runner_orders ro	
		ON co.order_id = ro.order_id
	WHERE cancellation = ''
	GROUP BY co.order_id
)

SELECT 
	Pizza_Count, 
	AVG(Time_to_Prepare) Time_to_Prepare
FROM TIME_PER_PIZZA_CTE
GROUP BY Pizza_Count;


--4. What was the average distance travelled for each customer?
SELECT customer_id, ROUND(AVG(distance), 2) Avg_distance
FROM runner_orders ro
JOIN customer_orders co
	ON ro.order_id = co.order_id
WHERE cancellation = ''
GROUP BY customer_id;


--5. What was the difference between the longest and shortest delivery times for all orders?
SELECT 
	MAX(duration) - MIN(duration) MaxDiff_in_delivery_time
FROM runner_orders
WHERE cancellation = '';


--6. What was the average speed for each runner for each delivery and do you notice any trend for these values?
SELECT runner_id, order_id, ROUND(AVG(distance * 60/duration), 2) Avg_Speed 
FROM runner_orders
WHERE cancellation = ''
GROUP BY runner_id, order_id;


--7. What is the successful delivery percentage for each runner?
SELECT 
	runner_id,
	100 * SUM(CASE WHEN distance != 0 THEN 1 ELSE 0 END) / COUNT(*) succ_del_perc
FROM runner_orders
GROUP BY runner_id;

----------------------------------------------------------------------------------------------
-- INDGREDIENT OPTIMIZATION

--1. What are the standard ingredients for each pizza?
WITH split_table_cte AS
(
SELECT pizza_id, value  
FROM pizza_recipes 
CROSS APPLY STRING_SPLIT(CONVERT(VARCHAR(MAX), toppings), ',')
)

SELECT pizza_id, STRING_AGG(CONVERT(VARCHAR(MAX), topping_name), ', ') pizza_ingredients
FROM split_table_cte stc
JOIN pizza_toppings pt
	ON stc.value = pt.topping_id
GROUP BY pizza_id;


--2. What was the most commonly added extra?
WITH common_extra_cte AS
(
SELECT MAX(value) value
FROM customer_orders co
CROSS APPLY STRING_SPLIT(CONVERT(VARCHAR(MAX), extras), ',')
)

SELECT topping_name
FROM common_extra_cte cec
JOIN pizza_toppings pt
	ON cec.value = pt.topping_id;


--3. What was the most common exclusion?
WITH common_exclusion_cte AS
(
SELECT MAX(value) value
FROM customer_orders co
CROSS APPLY STRING_SPLIT(CONVERT(VARCHAR(MAX), exclusions), ',')
)

SELECT topping_name
FROM common_exclusion_cte cec
JOIN pizza_toppings pt
	ON cec.value = pt.topping_id;


--4. Generate an order item for each record in the customers_orders table in the format of one of the following:
--Meat Lovers
--Meat Lovers - Exclude Beef
--Meat Lovers - Extra Bacon
--Meat Lovers - Exclude Cheese, Bacon - Extra Mushroom, Peppers

SELECT * FROM customer_orders;
