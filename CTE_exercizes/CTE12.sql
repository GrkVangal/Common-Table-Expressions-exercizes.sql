with chosen_department as
(
select  course_id, title, dept_name ,credits
from course
where dept_name='Economics'
)
select course_id, title, dept_name ,credits
from chosen_department
where credits>=3;