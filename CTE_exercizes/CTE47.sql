with enrollment_credits as (
    select
        takes.ID,
        SUM(course.credits) as selected_credits
    from takes
    inner join course
        on takes.course_id = course.course_id
    group by takes.ID
),
student_records as (
    select
        ID,
        name,
        tot_cred
    from student
)
select
    student_records.ID,
    student_records.name,
    student_records.tot_cred,
    enrollment_credits.selected_credits
from student_records
inner join enrollment_credits
    on student_records.ID = enrollment_credits.ID
order by enrollment_credits.selected_credits desc;