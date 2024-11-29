-- Write your MySQL query statement below
select user_id, max(time_stamp) as last_stamp
from Logins
where (user_id, time_stamp) in
(select * from 
Logins 
where year(time_stamp) = '2020')
group by user_id
