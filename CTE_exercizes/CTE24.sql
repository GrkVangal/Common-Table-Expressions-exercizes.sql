with buildings_summary as
(
select building,
	count(*) as department_count,
	sum(budget) as building_budget,
	avg(budget) as avg_department_budget
from department
group by building
)

select
	building,
	department_count,
	building_budget,
	avg_department_budget
from buildings_summary
group by department_count desc,building;