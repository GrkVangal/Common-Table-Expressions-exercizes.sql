WITH enrollments_by_course_department AS (
    SELECT
        course.dept_name,
        COUNT(*) AS enrollment_records
    FROM course
    INNER JOIN takes
        ON course.course_id = takes.course_id
    GROUP BY course.dept_name
)
SELECT
    enrollments_by_course_department.dept_name,
    department.building,
    enrollments_by_course_department.enrollment_records
FROM enrollments_by_course_department
INNER JOIN department
    ON enrollments_by_course_department.dept_name = department.dept_name
ORDER BY enrollments_by_course_department.enrollment_records DESC;