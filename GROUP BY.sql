SELECT rating FROM film;

SELECT customer_id, staff_id, sum(amount) AS amount 
	FROM payment 
GROUP BY customer_id, staff_id 
	ORDER BY sum(amount);
	
SELECT DATE(payment_date) 
	AS payment_date , SUM(amount) AS amount
FROM payment
	GROUP BY payment_date
ORDER BY amount DESC;

select staff_id, count(amount) AS amount 
	from payment 
GROUP BY staff_id;

SELECT rating, ROUND(AVG(replacement_cost),2) 
	FROM film 
GROUP BY rating;

SELECT * FROM payment;

SELECT customer_id, SUM(amount) AS amount 
	FROM payment
GROUP BY customer_id
	ORDER BY amount DESC
LIMIT 5;
