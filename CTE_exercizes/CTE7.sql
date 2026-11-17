with matching_titles as
(
select course_id,title,dept_name
from course
where title like '%Intro%'
)
select course_id,title,dept_name
from matching_titles
order by title asc;