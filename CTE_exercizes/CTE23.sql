
WITH student_counts AS (
    SELECT
        dept_name,
        COUNT(*) AS student_count
    FROM student
    GROUP BY dept_name
),
maximum_count AS (
    SELECT
        MAX(student_count) AS max_value
    FROM student_counts
)
SELECT
    dept_name,
    student_count
FROM student_counts
JOIN maximum_count
    ON student_counts.student_count = maximum_count.max_value;
