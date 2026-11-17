with teaching_counts as(
    select
        course_id,
        COUNT(*) as teaching_records
   from teaches
    group by course_id
),
enrollment_counts as (
    select
        course_id,
        COUNT(*) as enrollment_records
    from takes
   group by course_id
)
select
    course.course_id,
    course.title,
    teaching_counts.teaching_records,
    enrollment_counts.enrollment_records
from course
inner join teaching_counts
    on course.course_id = teaching_counts.course_id
inner join enrollment_counts
    on course.course_id = enrollment_counts.course_id
order by enrollment_counts.enrollment_records desc;