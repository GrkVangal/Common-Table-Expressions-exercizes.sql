with student_names as
(
select name,ID
from student
)
select name,ID
from student_names
order by name asc,ID asc;