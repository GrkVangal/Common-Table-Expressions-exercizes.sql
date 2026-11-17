WITH advisor_counts AS (
    SELECT
        advisor.i_ID,
        COUNT(advisor.s_ID) AS advisee_count
    FROM advisor
    GROUP BY advisor.i_ID
)
SELECT
    instructor.ID,
    instructor.name,
    department.building,
    advisor_counts.advisee_count
FROM advisor_counts
INNER JOIN instructor
    ON instructor.ID = advisor_counts.i_ID
INNER JOIN department
    ON instructor.dept_name = department.dept_name
ORDER BY advisor_counts.advisee_count DESC;