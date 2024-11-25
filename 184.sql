-- Write your MySQL query statement below
select p.product_id, product_name
from Product p join Sales s using(product_id)
group by product_id
having min(s.sale_date) >= '2019-01-01' and max(s.sale_date) <= '2019-03-31'