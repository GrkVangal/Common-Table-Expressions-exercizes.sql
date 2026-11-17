with student_progress as
(
select count(*) as student_count,
	dept_name,
	avg(tot_cred) as avg_credits
from student
group by dept_name
)
select dept_name,
student_count,
avg_credits
from student_progress
where student_count >=10
order by avg_credits desc;