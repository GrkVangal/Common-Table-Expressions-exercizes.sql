with payroll_by_department as
(
select 
	dept_name,
	sum(salary) as total_salary
from instructor
group by dept_name
)

select 
	dept_name,
	total_salary
from payroll_by_department
order by total_salary desc;