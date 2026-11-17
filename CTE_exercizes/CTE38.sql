with budget_average  as (
select
	avg(budget) as avg_budget
from department
),
department_budgets as(
select 
	dept_name,
    building,
    budget
from department
)
select
	department_budgets.dept_name,
    department_budgets.building,
    department_budgets.budget
from department_budgets
cross join budget_average
where department_budgets.budget > budget_average.avg_budget
ORDER BY department_budgets.budget DESC;