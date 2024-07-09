-- January
CREATE TABLE january_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) = 1;

-- Februrary
CREATE TABLE february_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) = 2;

-- March
CREATE TABLE march_jobs AS
    SELECT *
    FROM job_postings_fact
    WHERE
        EXTRACT(MONTH FROM job_posted_date) = 3;

--verifying tables 

SELECT *
FROM february_jobs
LIMIT 20;