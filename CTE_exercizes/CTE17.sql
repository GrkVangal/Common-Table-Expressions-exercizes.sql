with staff_counts as 
(
select 
	dept_name,
	count(*) as staff_count 
from instructor
group by dept_name
)
select 
dept_name,
staff_count 
from staff_counts
where staff_count>=3
group by staff_count desc,dept_name asc;
