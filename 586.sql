-- Write your MySQL query statement below
SELECT customer_number
FROM (
    SELECT customer_number, COUNT(customer_number) AS cnt
    FROM orders
    GROUP BY customer_number
) AS sb
ORDER BY sb.cnt DESC
LIMIT 1;
