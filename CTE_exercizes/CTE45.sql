with course_enrollments as (
    select
        course_id,
        COUNT(*) as enrollment_records
    from takes
    group by course_id
),
mean_enrollment as(
    select
        avg(enrollment_records) as avg_enrollments
    from course_enrollments
)
select
    course.course_id,
    course.title,
    course_enrollments.enrollment_records,
    mean_enrollment.avg_enrollments
from course
inner join course_enrollments
    on course.course_id = course_enrollments.course_id
cross join mean_enrollment
where course_enrollments.enrollment_records > mean_enrollment.avg_enrollments
order by course_enrollments.enrollment_records desc;