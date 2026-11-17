with department_max_credits as
(
select max(credits) as max_credits,
	dept_name
from course
group by dept_name
)
select
    course.dept_name,
    course.course_id,
    course.title,
    course.credits
FROM course
JOIN department_max_credits
    ON course.dept_name = department_max_credits.dept_name
WHERE course.credits = department_max_credits.max_credits
ORDER BY course.dept_name ASC;
