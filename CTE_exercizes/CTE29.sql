
WITH teaching_load AS (
    SELECT
        instructor.ID,
        instructor.name,
        instructor.dept_name,
        COUNT(*) AS teaching_records,
        SUM(course.credits) AS credit_load
    FROM instructor
    JOIN teaches
        ON instructor.ID = teaches.ID
    JOIN course
        ON teaches.course_id = course.course_id
    GROUP BY
        instructor.ID,
        instructor.name,
        instructor.dept_name
)
SELECT
    ID,
    name,
    dept_name,
    teaching_records,
    credit_load
FROM teaching_load
WHERE teaching_records >= 3
ORDER BY teaching_records DESC;
