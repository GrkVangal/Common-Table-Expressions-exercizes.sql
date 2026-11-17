WITH progress_by_department AS (
    SELECT
        student.dept_name,
        COUNT(*) AS student_count,
        AVG(student.tot_cred) AS avg_credits
    FROM student
    GROUP BY student.dept_name
)
SELECT
    progress_by_department.dept_name,
    department.building,
    progress_by_department.student_count,
    progress_by_department.avg_credits
FROM progress_by_department
INNER JOIN department
    ON progress_by_department.dept_name = department.dept_name
ORDER BY progress_by_department.avg_credits DESC;