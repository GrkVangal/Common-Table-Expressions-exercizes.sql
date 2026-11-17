with department_credit_totals as 
(
select 
	dept_name,
	count(*) as course_count,
	sum(credits) as total_credits
from course
group by dept_name
)

select 
	dept_name,
	course_count,
	total_credits
from department_credit_totals
where total_credits>=20
order by total_credits desc,dept_name;

