with staff_salary as (
select 
dept_name,
count(*) as instructor_count,
avg(salary) as average_salary,
max(salary) as highest_salary
from instructor
group by dept_name
)

select 
dept_name,
instructor_count,
average_salary,
highest_salary
from staff_salary
where instructor_count>=3
order by average_salary desc;