SELECT title, rental_rate
FROM film 
WHERE rental_rate > 
(SELECT AVG(rental_rate) -- This is comparing the rental_Rate > avg of 
FROM film)				 -- rental_rate from the same table. 
ORDER BY rental_rate;

SELECT ROUND(AVG(rental_rate),2)	-- Average is "2.98"
FROM film;

SELECT title, rental_rate -- In background it looks like this
FROM film
WHERE rental_rate > 2.98
ORDER BY rental_rate ASC;

SELECT * FROM film;

SELECT * FROM rental;

SELECT * FROM inventory;


SELECT inventory.film_id, title, return_date
FROM rental
INNER JOIN inventory
ON inventory.inventory_id = rental.inventory_id
INNER JOIN film
ON film.film_id = inventory.film_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30';

SELECT film_id,title 
from film
WHERE film_id IN
(SELECT inventory.film_id
FROM rental
INNER JOIN inventory 
ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-29' AND '2005-05-30')
ORDER BY film_id;

SELECT * FROM CUSTOMER;

SELECT * FROM PAYMENT;

SELECT customer.customer_id, first_name, last_name,amount
FROM customer
INNER JOIN payment 
ON payment.customer_id = customer.customer_id
WHERE NOT payment.amount > 10
GROUP BY customer.customer_id, payment.amount, first_name, last_name
ORDER BY customer.customer_id;

SELECT first_name, last_name
FROM customer
WHERE EXISTS
(SELECT * 
 FROM payment
WHERE payment.customer_id = customer.customer_id
AND amount > 10)


