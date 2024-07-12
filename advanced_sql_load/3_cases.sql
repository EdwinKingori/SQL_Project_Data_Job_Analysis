/*
Task objective:

label new columns as follows:
    - 'Anywhere' jobs as 'Remote'
    - 'new York, NY' jobs as 'Local'
    - otherwise 'onsite'
*/

SELECT
    COUNT(job_id) AS number_of_jobs,
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local'
        ELSE 'Other'
    END AS location_category
FROM 
    job_postings_fact
WHERE 
    job_title = 'Data Analyst'
GROUP BY 
    location_category;
