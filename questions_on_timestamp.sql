-- During which months did payments occurs?
-- Format your answer to return back the full month name

SELECT * FROM payment;
SELECT TO_CHAR(payment_date, 'MONTH') AS months
FROM payment
GROUP BY months;

-- OR
SELECT DISTINCT(TO_CHAR(payment_date, 'MONTH')) AS months
FROM payment;

-- How many payments occurred on a Monday?

SELECT COUNT(payment_date)
FROM payment
WHERE EXTRACT(DOW FROM payment_date) = 1;