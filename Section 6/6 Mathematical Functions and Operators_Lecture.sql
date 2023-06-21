SELECT ROUND (rental_duration/replacement_cost,2)*100 AS percent_cost
FROM film


SELECT replacement_cost*0.1 AS deposit
FROM film