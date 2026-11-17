with high_credit_students as (
select
	ID,
	dept_name
from student
where tot_cred>=100)


select
	dept_name,
	count(*) as advanced_count
from high_credit_students
group by dept_name
having count(*) >=5
order by advanced_count desc;