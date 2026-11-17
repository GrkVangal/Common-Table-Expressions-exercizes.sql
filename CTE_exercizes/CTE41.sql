with student_counts as (
    select
        dept_name,
        COUNT(*) as student_count
    from student
    group by dept_name
),
instructor_counts as (
    select
        dept_name,
        COUNT(*) as instructor_count
    from instructor
	group by dept_name
)
select
    department.dept_name,
    department.building,
    student_counts.student_count,
    instructor_counts.instructor_count
from department
inner join student_counts
    on department.dept_name = student_counts.dept_name
inner join instructor_counts
    on department.dept_name = instructor_counts.dept_name
order by student_counts.student_count desc;