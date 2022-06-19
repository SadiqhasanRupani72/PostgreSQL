select * from payment;
select customer_id, count(amount) as platinum_status from payment group by customer_id 
	having count(amount) >= 40;
	
select customer_id, staff_id, sum(amount)
	from payment
where staff_id = 2
	group by customer_id, staff_id 
having sum(amount) > 100
	order by customer_id;
	
-- OR (Udemy method)

SELECT customer_id, SUM(amount) AS amounts 
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100;
