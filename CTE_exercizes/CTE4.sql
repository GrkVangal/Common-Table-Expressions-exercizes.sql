with large_budgets as
(
select dept_name,building,budget
from department
where budget>=100000
)
select  dept_name,building,budget
from large_budgets
order by budget desc 
limit 5;