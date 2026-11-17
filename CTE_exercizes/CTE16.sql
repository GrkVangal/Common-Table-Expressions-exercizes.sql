with maximum_budget as (
select
	max(budget) as max_value
from department
)

select dept_name,building,budget
from department
join maximum_budget
on department.budget = maximum_budget.max_value;