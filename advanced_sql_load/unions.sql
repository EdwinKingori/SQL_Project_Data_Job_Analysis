-- Get jobs and companies from january
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    january_jobs

UNION 

-- Get jobs and companies from Februrary
SELECT
    job_title_short,
    company_id,
    job_location
FROM
    february_jobs