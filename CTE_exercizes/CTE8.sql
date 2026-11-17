with mid_progress_students as 
(
select ID,name,dept_name,tot_cred
from student
where tot_cred between 40 and 80
)
select ID,name,dept_name,tot_cred
from mid_progress_students
order by tot_cred asc, name asc;