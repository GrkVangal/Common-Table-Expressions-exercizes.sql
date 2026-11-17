with department_courses as
(
select course_id, title, dept_name, credits
from course
where dept_name='Biology'
)
select course_id, title, dept_name, credits
from department_courses
order by title;