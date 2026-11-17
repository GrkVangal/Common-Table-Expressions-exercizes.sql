with well_paid_instructors as
(
select ID,name,dept_name,salary
from instructor
where salary>90000
)
select ID,name,dept_name,salary
from well_paid_instructors
order by salary desc,name asc;