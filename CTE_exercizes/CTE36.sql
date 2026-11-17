with enrollments_by_course_department as (
    select
        course.dept_name,
        COUNT(*) as enrollment_records
    from course
    inner join takes
        on course.course_id = takes.course_id
    group by course.dept_name
)
select
    enrollments_by_course_department.dept_name,
    department.building,
    enrollments_by_course_department.enrollment_records
from enrollments_by_course_department
inner join department
    on enrollments_by_course_department.dept_name = department.dept_name
order by enrollments_by_course_department.enrollment_records desc;