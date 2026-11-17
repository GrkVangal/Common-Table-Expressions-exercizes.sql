WITH enrollment_details AS (
    SELECT
        student.ID AS student_id,
        student.name AS student_name,
        course.title AS course_title,
        takes.semester,
        takes.year
    FROM student
    INNER JOIN takes
        ON student.ID = takes.ID
    INNER JOIN course
        ON takes.course_id = course.course_id
)
SELECT
    student_id,
    student_name,
    course_title,
    semester,
    year
FROM enrollment_details
WHERE student_id = '12345'
ORDER BY year DESC;