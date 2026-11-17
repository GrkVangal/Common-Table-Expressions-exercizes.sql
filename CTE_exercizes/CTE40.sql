with course_popularity as (
select
	course_id,
    count(*) as enrollment_count
from takes
group by course_id
)

select
	course.course_id,
    course.title,
    course.dept_name,
    course_popularity.enrollment_count
from course_popularity
inner join course
	on course_popularity.course_id = course.course_id
where course_popularity.enrollment_count >= 20
order by course_popularity.enrollment_count desc;