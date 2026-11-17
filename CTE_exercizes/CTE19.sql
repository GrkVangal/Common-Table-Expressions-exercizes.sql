 with credit_range as 
 (
 select dept_name,
	 count(*) as course_count,
	 min(credits) as min_credits,
	 max(credits) as max_credits
 from course
 group by dept_name
 )
 
select
	dept_name,
	course_count,
	min_credits,
	max_credits
from credit_range
where course_count >=3
order by dept_name asc;

 
 