--Week 5 HW
-- question then answer, with code below it
-- Q1 = 2 actors
SELECT first_name, last_name, COUNT (last_name)
FROM actor
WHERE last_name LIKE 'Wahlberg'
GROUP BY first_name, last_name;

--Q2 = 3424 + 1188 + 7 + 988 = 5607
SELECT amount, COUNT(amount)
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99
GROUP BY amount;

--Q3 = 72 different film_id has 8 count
SELECT film_id, COUNT(film_id)
FROM inventory
GROUP BY film_id 
ORDER BY COUNT(film_id) DESC;

--Q4 = 0 customers
SELECT first_name, last_name, COUNT(last_name)
FROM customer
WHERE last_name LIKE 'William'
GROUP BY first_name, last_name;

--Q5 = 63 employees sold 5 each
SELECT inventory_id, staff_id, COUNT(inventory_id)
FROM rental
GROUP BY inventory_id, staff_id
ORDER BY COUNT(inventory_id) DESC;

--Q6 = 378
SELECT COUNT(DISTINCT district) 
FROM address;

--Q7 = 3 films have 1000 actors
SELECT film_id
FROM film_actor
ORDER BY film_id DESC;

--Q8 = 13 customers
SELECT store_id, last_name
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1
ORDER BY last_name DESC;

--Q9 = 1257
SELECT customer_id, rental_id, amount
FROM payment
WHERE customer_id BETWEEN 380 AND 430
GROUP BY customer_id, rental_id, amount
HAVING rental_id > 250
ORDER BY customer_id DESC;

--Q10 = 5 rating categories.  PG-13
SELECT rating, COUNT(rating) 
FROM film
GROUP BY rating;
