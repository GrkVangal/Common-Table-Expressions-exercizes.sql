WITH course_enrollment_counts AS (
    SELECT
        course.course_id,
        course.title,
        COUNT(takes.ID) AS enrollment_records
    FROM course
    LEFT JOIN takes
        ON course.course_id = takes.course_id
    GROUP BY
        course.course_id,
        course.title
)
SELECT
    course_id,
    title,
    enrollment_records
FROM course_enrollment_counts
WHERE enrollment_records = 0
ORDER BY title ASC;