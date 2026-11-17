 with student_department_info as 
 (
 select 
	 student.ID, 
	 student.name, 
	 student.dept_name, 
	 student.tot_cred, 
	 department.budget
 from student
 join department
	on student.dept_name = department.dept_name
 )
 
 select
	ID, 
	name, 
	dept_name, 
	tot_cred, 
	budget
from student_department_info
where tot_cred>=80
order by dept_name, tot_cred desc;