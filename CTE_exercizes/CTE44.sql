with department_average_salary as (
    select
        dept_name,
        AVG(salary) as avg_salary
    from instructor
   group by dept_name
),
all_instructors as (
    select
        ID,
        name,
        dept_name,
        salary
   from instructor
)
select
    all_instructors.ID,
    all_instructors.name,
    all_instructors.dept_name,
    all_instructors.salary,
    department_average_salary.avg_salary
from all_instructors
inner join department_average_salary
    on all_instructors.dept_name = department_average_salary.dept_name
where all_instructors.salary > department_average_salary.avg_salary
order by
    all_instructors.dept_name asc,
    all_instructors.salary desc;