-- California sales tax laws have changed and we need to alert our customers to this 
-- through email.
-- What are the emails of the customers who live in California?

select * from address;

select * from customer;

select address.district, customer.email
from address
inner join customer
on address.address_id = customer.customer_id
where address.district = 'California';


-- A customer waks in and is a huge fan of the actor "Nick Wahlberg" and wants to
-- know which movies he is in.
-- Get a list of all the movies "Nick Wahlberg" has been in.

select * from actor;
select * from film;
select * from film_actor;

select title, first_name, last_name 
from actor
inner join film_actor
on actor.actor_id = film_actor.actor_id
inner join film
on film.film_id = film_actor.film_id
where first_name = 'Nick'
and last_name = 'Wahlberg';