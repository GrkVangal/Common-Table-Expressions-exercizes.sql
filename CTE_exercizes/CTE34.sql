with course_enrollment_counts as (
    select
        course.course_id,
        course.title,
        COUNT(takes.ID) as enrollment_records
    from course
    left join takes
        on course.course_id = takes.course_id
    group by
        course.course_id,
        course.title
)
select
    course_id,
    title,
    enrollment_records
from course_enrollment_counts
where enrollment_records = 0
order by title asc;