SELECT DISTINCT (TO_CHAR (payment_date, 'Month'))
FROM payment 

SELECT COUNT (*)
FROM payment
WHERE EXTRACT (DOW FROM payment_date) = 1