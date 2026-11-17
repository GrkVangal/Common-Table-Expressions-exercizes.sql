WITH course_counts AS (
    SELECT 
		dept_name,
		COUNT(*) AS course_count
    FROM course
    GROUP BY dept_name
)

SELECT 
	dept_name, 
	course_count
FROM course_counts
WHERE course_count >= 5
ORDER BY course_count DESC;