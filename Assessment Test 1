--1. Return the Customer IDs of customer who have spent at least $110 
-- with the staff member who has an ID of 2--

SELECT * FROM payment;
SELECT customer_id, staff_id, SUM(amount) AS amount
FROM payment
WHERE staff_id = 2
GROUP BY customer_id, staff_id
HAVING SUM(amount) >= 110;

-- 2. How many films begins with the letter of j--

SELECT * FROM film;
SELECT COUNT(title) as Title_count
FROM film
WHERE title ILIKE 'J%';

-- 3. What customer has the right highest customer ID number
-- whose name starts with and 'E' and has an address ID lower than 500--

SELECT * FROM customer;

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE 'E%' AND address_id < 500	
ORDER BY customer_id DESC
LIMIT 1