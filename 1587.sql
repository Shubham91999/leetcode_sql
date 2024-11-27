-- Write your MySQL query statement below
select name as NAME,
sum(amount) as BALANCE
from Transactions t join users u 
on t.account = u.account
group by t.account
having sum(amount) > 10000
