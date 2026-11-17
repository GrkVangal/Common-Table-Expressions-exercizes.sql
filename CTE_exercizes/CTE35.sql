with advisor_counts as (
    select
        advisor.i_ID,
        COUNT(advisor.s_ID) as advisee_count
    from advisor
    group by advisor.i_ID
)
select
    instructor.ID,
    instructor.name,
    department.building,
    advisor_counts.advisee_count
from advisor_counts
inner join instructor
    on instructor.ID = advisor_counts.i_ID
inner join department
    on instructor.dept_name = department.dept_name
order by advisor_counts.advisee_count desc;