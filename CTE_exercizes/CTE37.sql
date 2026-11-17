with department_payroll as (
   select
        dept_name,
        SUM(salary) astotal_salary
   from instructor
    group by dept_name
),
average_payroll as (
    select
        avg(total_salary) as avg_salary_total
    from department_payroll
)
select
    department_payroll.dept_name,
    department_payroll.total_salary
from department_payroll
cross join average_payroll
where department_payroll.total_salary > average_payroll.avg_salary_total
order by.total_salary desc;