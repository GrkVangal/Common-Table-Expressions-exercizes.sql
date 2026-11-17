
WITH course_catalog AS (
    SELECT
        course.course_id,
        course.title,
        course.dept_name,
        course.credits,
        department.building
    FROM course
    JOIN department
        ON course.dept_name = department.dept_name
)
SELECT
    course_id,
    title,
    dept_name,
    credits,
    building
FROM course_catalog
ORDER BY building ASC, title ASC;
