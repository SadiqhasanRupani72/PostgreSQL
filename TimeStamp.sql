SHOW TIMEZONE;

SELECT NOW();

SELECT TIMEOFDAY();

SELECT CURRENT_TIME;

SELECT CURRENT_DATE;

select EXTRACT(year from payment_date) 
AS pay_year
from payment;

select extract(month from payment_date) 
as pay_month
from payment;

select extract(quarter from payment_date)
as pay_week
from payment;

select extract(quarter from payment_date)
as pay_week, count(payment_date)
from payment
group by pay_week
order by pay_week desc;

-- How to find age of a timestamp:

SELECT * FROM payment;

SELECT AGE(payment_date) AS pay_age
FROM payment;

-- How to conver the date into string format

SELECT * FROM payment;

SELECT TO_CHAR(payment_date, 'dd-mm-yyyy')
FROM payment;

-- OR

SELECT TO_CHAR(payment_date, 'yyyy-mm-dd') 
AS year_month_day
FROM payment;

-- OR

SELECT TO_CHAR(payment_date, 'YYYY - MONTH - DAY') 
AS STRING_timestamp
FROM payment;

-- OR
SELECT TO_CHAR(payment_date, 'DAY	MONTH	YYYY') 
AS STRING_timestamp
FROM payment;

-- OR
SELECT TO_CHAR(payment_date, 'MONTH	YYYY')
AS month_and_year
FROM payment;

-- OR

SELECT TO_CHAR(payment_date, 'mon/dd/yyyy')
FROM payment;