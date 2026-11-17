
WITH student_enrollments AS (
    SELECT
        student.ID,
        student.name,
        COUNT(*) AS enrollment_records,
        SUM(course.credits) AS enrolled_credits
    FROM student
    JOIN takes
        ON student.ID = takes.ID
    JOIN course
        ON takes.course_id = course.course_id
    GROUP BY
        student.ID,
        student.name
)
SELECT
    ID,
    name,
    enrollment_records,
    enrolled_credits
FROM student_enrollments
WHERE enrollment_records >= 5
ORDER BY enrollment_records DESC;
