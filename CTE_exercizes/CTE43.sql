with course_counts as(
   select
        dept_name,
        COUNT(*) as course_count
    from course
    group by dept_name
),
average_course_count as (
    select
        avg(course_count) as avg_count
    from course_counts
)
select
    course_counts.dept_name,
    course_counts.course_count
from course_counts
cross join average_course_count
where course_counts.course_count > average_course_count.avg_count
order by course_counts.course_count desc;