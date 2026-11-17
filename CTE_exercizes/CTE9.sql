with salary_list as(
select ID,name,dept_name,salary
from instructor
order by salary desc,ID asc
)
select ID,name,dept_name,salary
from salary_list
limit 10;