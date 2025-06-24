CREATE DATABASE HRAnalyticsProject;
GO
USE HRAnalyticsProject;

CREATE TABLE HR_EmployeeData (
    employee_id VARCHAR(10),
    employee_name VARCHAR(50),
    gender VARCHAR(10),
    age INT,
    department VARCHAR(50),
    job_role VARCHAR(50),
    hire_date DATE,
    resign_date DATE,
    salary INT,
    region VARCHAR(50)
);


SELECT TOP 10 * FROM HR_EmployeeData;

--TOTAL EMPLOYEE ALL TIME
SELECT COUNT(employee_id) AS employee_count 
FROM HR_EmployeeData;

--CURRENT EMPLOYEE COUNT
SELECT COUNT(employee_id) AS employee_count 
FROM HR_EmployeeData
WHERE resign_date IS NULL;

--ATTRTITION RATE BY DEPARTMENT
SELECT
department,
COUNT(employee_id) AS total_employee,
SUM(CASE WHEN resign_date IS NOT NULL THEN 1 ELSE 0 END) AS resigned,
ROUND((CAST(SUM(CASE WHEN resign_date IS NOT NULL THEN 1 ELSE 0 END)AS FLOAT)/COUNT(*))*100,2) AS attrition_rate_percent
FROM HR_EmployeeData
GROUP BY department

--AVERAGE SALARY BY DEPARTMENT
SELECT department,AVG(salary) AS average_salary 
FROM HR_EmployeeData
GROUP BY department

--MONTHLY HIRING TREND
SELECT FORMAT(hire_date,'yyyy,MM') AS hire_month,
COUNT(employee_id) AS hires
FROM HR_EmployeeData
GROUP BY FORMAT(hire_date,'yyyy,MM')
ORDER BY hire_month

--GENDER DISTRIBUTION
SELECT gender,COUNT(*) AS COUNT
FROM HR_EmployeeData
GROUP BY gender

--TOP 5 JOBS ROLES BY SALARY
SELECT job_role, AVG(salary) AS average_salary 
FROM HR_EmployeeData
GROUP BY job_role
ORDER BY AVG(salary) DESC
OFFSET 0 ROWS FETCH NEXT 5 ROWS ONLY;
--OR
SELECT TOP 5 job_role, AVG(salary) AS average_salary 
FROM HR_EmployeeData
GROUP BY job_role
ORDER BY AVG(salary) DESC

