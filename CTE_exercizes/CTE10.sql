with low_budget_departments as
(
select dept_name,budget
from department
where budget<90000
)
select  COUNT(*) AS department_count
from low_budget_departments

