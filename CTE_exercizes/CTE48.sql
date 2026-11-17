with teaching_counts as (
    select
        ID,
        count(*) as teaching_records
    from teaches
    group by ID
),
advisor_counts as (
    select
        i_ID,
        count(*) as advisee_count
    from advisor
   group by i_ID
)
select
    instructor.ID,
    instructor.name,
    instructor.dept_name,
    teaching_counts.teaching_records,
    advisor_counts.advisee_count
from instructor
inner join teaching_counts
    on instructor.ID = teaching_counts.ID
inner join advisor_counts
    on instructor.ID = advisor_counts.i_ID
order by teaching_counts.teaching_records desc;