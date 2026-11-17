with eligible_students as(
select ID
from student
where tot_cred>=100)

select count(*) as student_count
from eligible_students;