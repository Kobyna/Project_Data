/*
Question: What are the top skills based salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focus on roles with specified salaries, regardless of location
- Why? It reveals how different skills impact salary levels for Data Analysts and 
  helps identify the most financially rewarding skills to acquire or improve
*/

SELECT
    skills,
    ROUND(AVG(salary_year_avg),2) AS avg_salary
FROM
    job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE 
    job_title_short = 'Data Analyst' AND
    salary_year_avg IS NOT NULL
GROUP BY
    skills
ORDER BY
    avg_salary DESC
LIMIT 25

/*
Looking at the top paying skills for data analysis, several trends emerge:

1. Specialized technologies like Solidity and DataRobot command high salaries, reflecting demand for expertise in blockchain,
    big data analytics, and machine learning.
2. Infrastructure management skills such as VMware and Terraform, alongside machine learning frameworks like PyTorch and 
    TensorFlow, are in high demand as companies rely more on complex IT infrastructure and AI technologies.
3. Programming languages like Golang and Scala, alongside data management tools like Kafka and Cassandra, 
    are essential for data analysis roles, indicating the importance of both development skills and data processing expertise.

[
  {
    "skills": "svn",
    "avg_salary": "400000.00"
  },
  {
    "skills": "solidity",
    "avg_salary": "179000.00"
  },
  {
    "skills": "couchbase",
    "avg_salary": "160515.00"
  },
  {
    "skills": "datarobot",
    "avg_salary": "155485.50"
  },
  {
    "skills": "golang",
    "avg_salary": "155000.00"
  },
  {
    "skills": "mxnet",
    "avg_salary": "149000.00"
  },
  {
    "skills": "dplyr",
    "avg_salary": "147633.33"
  },
  {
    "skills": "vmware",
    "avg_salary": "147500.00"
  },
  {
    "skills": "terraform",
    "avg_salary": "146733.83"
  },
  {
    "skills": "twilio",
    "avg_salary": "138500.00"
  },
  {
    "skills": "gitlab",
    "avg_salary": "134126.00"
  },
  {
    "skills": "kafka",
    "avg_salary": "129999.16"
  },
  {
    "skills": "puppet",
    "avg_salary": "129820.00"
  },
  {
    "skills": "keras",
    "avg_salary": "127013.33"
  },
  {
    "skills": "pytorch",
    "avg_salary": "125226.20"
  },
  {
    "skills": "perl",
    "avg_salary": "124685.75"
  },
  {
    "skills": "ansible",
    "avg_salary": "124370.00"
  },
  {
    "skills": "hugging face",
    "avg_salary": "123950.00"
  },
  {
    "skills": "tensorflow",
    "avg_salary": "120646.83"
  },
  {
    "skills": "cassandra",
    "avg_salary": "118406.68"
  },
  {
    "skills": "notion",
    "avg_salary": "118091.67"
  },
  {
    "skills": "atlassian",
    "avg_salary": "117965.60"
  },
  {
    "skills": "bitbucket",
    "avg_salary": "116711.75"
  },
  {
    "skills": "airflow",
    "avg_salary": "116387.26"
  },
  {
    "skills": "scala",
    "avg_salary": "115479.53"
  }
]
*/