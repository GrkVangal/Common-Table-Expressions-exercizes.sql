
WITH all_department_counts AS (
    SELECT
        department.dept_name,
        department.building,
        COUNT(student.ID) AS student_count
    FROM department
    LEFT JOIN student
        ON department.dept_name = student.dept_name
    GROUP BY department.dept_name, department.building
)
SELECT
    dept_name,
    building,
    student_count
FROM all_department_counts
ORDER BY dept_name ASC;
