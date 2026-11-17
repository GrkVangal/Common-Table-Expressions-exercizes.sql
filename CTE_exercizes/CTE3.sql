with advanced_students as
(
select ID,name,dept_name,tot_cred
from student
where tot_cred>=110
)
select ID,name,dept_name,tot_cred
from advanced_students
order by tot_cred desc,ID desc;