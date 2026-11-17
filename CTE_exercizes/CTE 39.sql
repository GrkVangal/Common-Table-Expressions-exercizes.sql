with department_progress as (
select
	dept_name,
    avg(tot_cred) as avg_credits
from student
group by dept_name
),
overall_progress as(
select 
	avg(avg_credits) as overall_avg_credits
from department_progress
)

select
    department_progress.dept_name,
    department_progress.avg_credits
from department_progress
cross join overall_progress
where department_progress.avg_credits > overall_progress.overall_avg_credits
order by department_progress.avg_credits desc;