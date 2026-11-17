with large_courses as
(
select course_id,title,credits
from course
where credits>=4
)
select course_id,title,credits
from large_courses
order by credits desc;