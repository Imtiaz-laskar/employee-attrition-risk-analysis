## Employee Attrition Risk Analysis

### Objective

This project analyzes employee attrition patterns to identify key factors associated with employee turnover. Using SQL in Google BigQuery, the analysis explores the relationship between attrition and factors such as overtime, job role, compensation, tenure, job satisfaction, and department.

---

## Business Question

What factors are most strongly associated with employee attrition, and where should organizations focus retention efforts to reduce turnover risk?

---

## Dataset Overview

| Metric                 | Value  |
| ---------------------- | ------ |
| Total Employees        | 1,470  |
| Total Attritions       | 237    |
| Overall Attrition Rate | 16.12% |
| Departments            | 3      |
| Job Roles              | 9      |
| Dataset Size           | 421 KB |

---

# Key Findings

## 1. Overtime is the Strongest Attrition Driver

Employees working overtime experienced significantly higher attrition.

| Overtime Status | Attrition Rate |
| --------------- | -------------- |
| Yes             | 30.53%         |
| No              | 10.44%         |

### Insight

Employees working overtime are nearly **3x more likely** to leave than employees who do not work overtime.

### Business Implication

Workload management and employee well-being initiatives may have a significant impact on retention.

---

## 2. Sales Roles Face the Highest Turnover Risk

| Job Role              | Attrition Rate |
| --------------------- | -------------- |
| Sales Representative  | 39.76%         |
| Laboratory Technician | 23.94%         |
| Human Resources       | 23.08%         |
| Sales Executive       | 17.48%         |
| Research Scientist    | 16.10%         |

### Insight

Sales Representatives exhibit the highest turnover risk, with attrition rates more than double the company average.

### Business Implication

Retention programs should prioritize frontline sales teams and customer-facing roles.

---

## 3. Overtime Amplifies Risk Across Job Roles

Highest-risk combinations identified:

| Job Role              | Overtime | Attrition Rate |
| --------------------- | -------- | -------------- |
| Sales Representative  | Yes      | 66.67%         |
| Laboratory Technician | Yes      | 50.00%         |
| Human Resources       | Yes      | 38.46%         |
| Research Scientist    | Yes      | 34.02%         |
| Sales Executive       | Yes      | 32.98%         |

### Insight

The combination of demanding roles and overtime significantly increases turnover risk.

### Business Implication

Targeted interventions should focus on high-risk role and workload combinations rather than broad workforce-wide programs.

---

## 4. Lower Job Satisfaction is Associated with Higher Attrition

| Job Satisfaction | Attrition Rate |
| ---------------- | -------------- |
| 1 (Lowest)       | 22.84%         |
| 2                | 16.43%         |
| 3                | 16.52%         |
| 4 (Highest)      | 11.33%         |

### Insight

Attrition decreases as job satisfaction increases.

### Business Implication

Improving employee engagement and workplace experience may reduce voluntary turnover.

---

## 5. Employees Who Leave Earn Less on Average

| Attrition Status | Average Monthly Income |
| ---------------- | ---------------------- |
| Stayed           | 6,832.74               |
| Left             | 4,787.09               |

### Insight

Employees who left earned approximately **30% less** than employees who remained.

### Business Implication

Compensation competitiveness may play a role in employee retention.

---

## 6. Shorter Tenure Correlates with Higher Attrition

| Attrition Status | Average Years at Company |
| ---------------- | ------------------------ |
| Stayed           | 7.37 Years               |
| Left             | 5.13 Years               |

### Insight

Employees who leave tend to do so earlier in their organizational lifecycle.

### Business Implication

The first five years of employment represent a critical retention window.

---

## 7. Sales Department Experiences Highest Attrition

| Department             | Attrition Rate |
| ---------------------- | -------------- |
| Sales                  | 20.63%         |
| Human Resources        | 19.05%         |
| Research & Development | 13.84%         |

### Insight

Sales consistently demonstrates higher turnover compared to other departments.

### Business Implication

Department-specific retention strategies may be more effective than organization-wide initiatives.

---

# Recommendations

### Immediate Actions

1. Reduce excessive overtime in high-risk roles.
2. Prioritize retention efforts within Sales teams.
3. Strengthen onboarding and engagement programs during employees' first five years.
4. Conduct compensation benchmarking for high-turnover positions.
5. Monitor job satisfaction indicators and employee feedback regularly.

---

# Analytical Approach

* Data Source: Public employee attrition dataset from Kaggle.
* Platform: Google BigQuery.
* Analysis Method: Descriptive analytics using SQL.
* AI Assistance: Google BigQuery Gemini for SQL generation support, exploratory analysis, and insight validation.
* Scope: Identification of attrition patterns and workforce risk indicators.

---

# Conclusion

The analysis indicates that **overtime, job role, compensation, tenure, and job satisfaction** are the strongest factors associated with employee attrition. Among these, overtime emerges as the most significant predictor, particularly when combined with customer-facing and operational roles. Organizations seeking to improve retention should focus on workload management, targeted interventions for high-risk roles, and early-career employee engagement strategies.

