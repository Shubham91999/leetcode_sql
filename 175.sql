-- Write your MySQL query statement below
select firstName, lastName, city, state
from Person p left outer join Address a using(personId)