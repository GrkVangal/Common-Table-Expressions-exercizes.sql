WITH teaching_details AS (
    SELECT
        instructor.ID AS instructor_id,
        instructor.name AS instructor_name,
        course.title AS title,
        teaches.semester,
        teaches.year
    FROM instructor
    INNER JOIN teaches
        ON instructor.ID = teaches.ID
    INNER JOIN course
        ON teaches.course_id = course.course_id
)
SELECT
    instructor_id,
    instructor_name,
    title,
    semester,
    year
FROM teaching_details
WHERE instructor_id = '10564'
ORDER BY year DESC, title ASC;