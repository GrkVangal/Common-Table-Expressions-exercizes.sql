with instructor_locations as 
(
select
	ID, 
	name, 
	instructor.dept_name, 
	building
from instructor
join department
	on instructor.dept_name = department.dept_name
)

select
	ID, 
	name, 
	dept_name, 
	building
from instructor_locations
where building='Hamilton';
