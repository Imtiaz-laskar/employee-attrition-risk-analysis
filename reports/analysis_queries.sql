/* =====================================================
   EMPLOYEE ATTRITION RISK ANALYSIS
   Dataset: employee_attrition
   Platform: Google BigQuery
===================================================== */


/* =====================================================
   1. DATASET OVERVIEW
===================================================== */

SELECT
  COUNT(*) AS total_employees,
  COUNT(DISTINCT Department) AS departments,
  COUNT(DISTINCT JobRole) AS job_roles,
  SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) AS attritions,
  ROUND(
    100 * SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS overall_attrition_rate
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`;


/* =====================================================
   2. DEPARTMENT ATTRITION ANALYSIS
===================================================== */

SELECT
  Department,
  COUNT(*) AS employees,
  SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) AS attritions,
  ROUND(
    100 * SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS attrition_rate
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
GROUP BY
  Department
ORDER BY
  attrition_rate DESC;


/* =====================================================
   3. JOB ROLE ATTRITION ANALYSIS
===================================================== */

SELECT
  JobRole,
  COUNT(*) AS employees,
  SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) AS attritions,
  ROUND(
    100 * SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS attrition_rate
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
GROUP BY
  JobRole
ORDER BY
  attrition_rate DESC;


/* =====================================================
   4. OVERTIME ATTRITION ANALYSIS
===================================================== */

SELECT
  OverTime,
  COUNT(*) AS employees,
  SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) AS attritions,
  ROUND(
    100 * SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS attrition_rate
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
GROUP BY
  OverTime
ORDER BY
  attrition_rate DESC;


/* =====================================================
   5. JOB SATISFACTION ANALYSIS
===================================================== */

SELECT
  JobSatisfaction,
  COUNT(*) AS employees,
  SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) AS attritions,
  ROUND(
    100 * SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS attrition_rate
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
GROUP BY
  JobSatisfaction
ORDER BY
  JobSatisfaction;


/* =====================================================
   6. ROLE + OVERTIME ANALYSIS
===================================================== */

SELECT
  JobRole,
  OverTime,
  COUNT(*) AS employees,
  SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) AS attritions,
  ROUND(
    100 * SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS attrition_rate
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
GROUP BY
  JobRole,
  OverTime
ORDER BY
  attrition_rate DESC;


/* =====================================================
   7. COMPENSATION ANALYSIS
===================================================== */

SELECT
  Attrition,
  ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income,
  MIN(MonthlyIncome) AS min_income,
  MAX(MonthlyIncome) AS max_income
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
GROUP BY
  Attrition;


/* =====================================================
   8. TENURE ANALYSIS
===================================================== */

SELECT
  Attrition,
  ROUND(AVG(YearsAtCompany), 2) AS avg_years_at_company
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
GROUP BY
  Attrition;


/* =====================================================
   9. DISTANCE FROM HOME ANALYSIS
===================================================== */

SELECT
  DistanceFromHome,
  COUNT(*) AS employees,
  SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) AS attritions,
  ROUND(
    100 * SUM(CASE WHEN Attrition = TRUE THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS attrition_rate
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
GROUP BY
  DistanceFromHome
ORDER BY
  DistanceFromHome;


/* =====================================================
   10. HIGHEST DISTANCE EMPLOYEES
===================================================== */

SELECT
  EmployeeNumber,
  DistanceFromHome,
  MonthlyIncome,
  Attrition
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
ORDER BY
  DistanceFromHome DESC,
  MonthlyIncome ASC
LIMIT 5;


/* =====================================================
   11. TABLE STORAGE INFORMATION
===================================================== */

SELECT
  table_id,
  row_count,
  size_bytes,
  ROUND(size_bytes / 1024, 2) AS size_kb
FROM
  `Employee_Attrition.__TABLES__`
WHERE
  table_id = 'employee_attrition';


/* =====================================================
   12. UNIQUE DEPARTMENTS
===================================================== */

SELECT
  Department,
  COUNT(*) AS employees
FROM
  `employee-attrition-502903.Employee_Attrition.employee_attrition`
GROUP BY
  Department
ORDER BY
  employees DESC;
