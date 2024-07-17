/*
Find job postings from the first quarter that have a salary greater than $70k
 - Combine job postings tables from the first quarter of 2023 (jan-mar)
 - Gets job postings with an average yearly salary > $70,000
*/

SELECT 
    quarter1_job_postings.job_title_short,
    quarter1_job_postings.job_location,
    quarter1_job_postings.job_via,
    quarter1_job_postings.job_posted_date ::DATE,
    quarter1_job_postings.salary_year_avg
FROM 
    (
        SELECT *
        From january_jobs 
        UNION ALL
        SELECT *
        FROM february_jobs
        UNION ALL
        SELECT *
        FROM march_jobs
    ) AS quarter1_job_postings

WHERE
    salary_year_avg > 7000 AND
    job_title = 'Data Analyst'
ORDER BY
    salary_year_avg DESC;



