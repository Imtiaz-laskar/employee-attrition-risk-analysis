# Employee Attrition Risk Analysis Using BigQuery SQL

## Overview

Employee attrition can significantly impact organizational performance through increased recruitment costs, productivity loss, knowledge transfer gaps, and employee disengagement. This project analyzes workforce attrition patterns using SQL in Google BigQuery to identify key factors associated with employee turnover and uncover high-risk employee segments.

The analysis focuses on workforce demographics, job characteristics, compensation, tenure, satisfaction, and overtime patterns to understand where attrition risk is concentrated and provide data-driven retention recommendations.

---

## Business Problem

Employee turnover is a critical workforce challenge that affects operational continuity and organizational performance.

This project seeks to answer:

> **What factors are most strongly associated with employee attrition, and which employee segments exhibit the highest turnover risk?**

By identifying these patterns, organizations can develop targeted retention strategies and proactively address workforce risks.

---

## Objectives

- Measure overall employee attrition.
- Identify departments and job roles with elevated turnover.
- Assess the relationship between overtime and attrition.
- Evaluate the impact of compensation on employee retention.
- Analyze the relationship between job satisfaction and attrition.
- Examine employee tenure patterns among attrited employees.
- Provide executive-level recommendations based on findings.

---

## Data Source

This project uses a publicly available Employee Attrition dataset sourced from Kaggle.

The dataset contains employee demographic, compensation, job satisfaction, tenure, department, job role, and work-related attributes used to analyze workforce attrition patterns.

### Dataset Characteristics

| Metric | Value |
|----------|----------|
| Total Employees | 1,470 |
| Total Attributes | 35 |
| Departments | 3 |
| Job Roles | 9 |
| Attrition Cases | 237 |
| Overall Attrition Rate | 16.12% |
| Dataset Size | 421 KB |

### Key Fields Analyzed

- Attrition
- Department
- JobRole
- OverTime
- MonthlyIncome
- JobSatisfaction
- YearsAtCompany
- DistanceFromHome
- TotalWorkingYears

---

## Tools & Technologies

| Category | Tool |
|-----------|------|
| Data Storage & Analysis | Google BigQuery |
| Query Language | SQL |
| Documentation | GitHub |
| AI-Assisted Analysis | Gemini in BigQuery |
| Version Control | Git |

---

## Analytical Approach

The analysis followed a structured workflow:

### 1. Data Understanding

- Reviewed dataset structure and available attributes.
- Validated record counts and workforce composition.
- Identified variables relevant to attrition analysis.

### 2. Exploratory Data Analysis

Analyzed:

- Overall attrition rates
- Department distribution
- Job role distribution
- Workforce composition

### 3. Attrition Segmentation

Measured attrition across:

- Departments
- Job roles
- Overtime status
- Job satisfaction levels
- Employee tenure

### 4. Risk Identification

Investigated combinations of variables to identify high-risk employee segments.

Examples:

- Job Role + Overtime
- Compensation + Attrition
- Tenure + Attrition

### 5. Insight Generation

Translated SQL outputs into business findings and retention recommendations.

---

# Key Findings

## 1. Overtime Emerged as the Strongest Attrition Driver

| Overtime Status | Employees | Attritions | Attrition Rate |
|----------------|-----------:|-----------:|---------------:|
| Yes | 416 | 127 | 30.53% |
| No | 1054 | 110 | 10.44% |

### Insight

Employees working overtime experienced nearly three times the attrition rate of employees who did not work overtime.

### Business Implication

Workload management and employee well-being initiatives may significantly improve retention outcomes.

---

## 2. Attrition Risk is Concentrated in Specific Job Roles

| Job Role | Attrition Rate |
|-----------|---------------:|
| Sales Representative | 39.76% |
| Laboratory Technician | 23.94% |
| Human Resources | 23.08% |
| Sales Executive | 17.48% |
| Research Scientist | 16.10% |
| Manufacturing Director | 6.90% |

### Insight

Sales Representatives experienced the highest turnover risk, more than double the organizational average.

### Business Implication

Retention programs should prioritize high-risk operational and customer-facing roles.

---

## 3. Overtime Amplifies Role-Based Attrition Risk

| Job Role | Overtime | Attrition Rate |
|-----------|----------|---------------:|
| Sales Representative | Yes | 66.67% |
| Laboratory Technician | Yes | 50.00% |
| Human Resources | Yes | 38.46% |
| Research Scientist | Yes | 34.02% |
| Sales Executive | Yes | 32.98% |

### Insight

The highest-risk employee segment consists of Sales Representatives working overtime, where attrition reached 66.67%.

### Business Implication

Targeted workload interventions may be more effective than broad retention initiatives.

---

## 4. Lower Job Satisfaction is Associated with Higher Attrition

| Job Satisfaction | Attrition Rate |
|-----------------|---------------:|
| 1 (Lowest) | 22.84% |
| 2 | 16.43% |
| 3 | 16.52% |
| 4 (Highest) | 11.33% |

### Insight

Attrition consistently declines as job satisfaction increases.

### Business Implication

Employee engagement and workplace experience should be monitored as leading indicators of turnover risk.

---

## 5. Employees Who Leave Earn Less on Average

| Attrition Status | Average Monthly Income |
|-----------------|-----------------------:|
| Stayed | 6,832.74 |
| Left | 4,787.09 |

### Insight

Employees who left earned approximately 30% less on average than employees who remained.

### Business Implication

Compensation competitiveness may influence employee retention decisions.

---

## 6. Employees Who Leave Tend to Have Shorter Tenure

| Attrition Status | Average Years at Company |
|-----------------|-------------------------:|
| Stayed | 7.37 Years |
| Left | 5.13 Years |

### Insight

Employees who leave tend to do so earlier in their organizational lifecycle.

### Business Implication

The first five years of employment represent a critical retention period.

---

## 7. Sales Department Experiences the Highest Attrition

| Department | Employees | Attrition Rate |
|------------|----------:|---------------:|
| Sales | 446 | 20.63% |
| Human Resources | 63 | 19.05% |
| Research & Development | 961 | 13.84% |

### Insight

Sales demonstrates the highest turnover risk despite representing only 30% of the workforce.

### Business Implication

Department-specific retention initiatives may deliver greater impact than organization-wide interventions.

---

## 8. Distance From Home Shows Limited Influence

Analysis of commute distance did not reveal a consistent relationship with attrition.

### Insight

Workload, satisfaction, compensation, and role-specific factors appear more influential than commute distance.

---

# Executive Recommendations

## Priority 1: Reduce Excessive Overtime

- Monitor overtime trends across teams.
- Improve workforce planning and resource allocation.
- Encourage sustainable workload practices.

## Priority 2: Focus Retention Efforts on High-Risk Roles

Prioritize:

- Sales Representatives
- Sales Executives
- Laboratory Technicians

## Priority 3: Improve Employee Experience

- Monitor employee satisfaction metrics.
- Strengthen feedback and engagement programs.
- Address recurring workplace concerns.

## Priority 4: Review Compensation Structures

- Evaluate compensation competitiveness.
- Assess pay equity across high-turnover roles.

## Priority 5: Strengthen Early-Career Retention

- Enhance onboarding programs.
- Provide career development opportunities.
- Improve manager support during early tenure.

---

## Repository Structure

```text
employee-attrition-risk-analysis/

├── README.md
│
├── reports/
│   ├── executive_summary.md
│   │
│   ├── sql/
│   │   └── analysis_queries.sql
│   │
│   ├── evidence/
│   │   ├── overtime_analysis.png
│   │   ├── job_role_analysis.png
│   │   ├── role_overtime_analysis.png
│   │   ├── compensation_analysis.png
│   │   └── department_analysis.png
│   │
│   └── docs/
│       └── data_source.md
│
└── LICENSE
```

---

## Skills Demonstrated

### SQL & Analytics

- SQL Querying
- Data Exploration
- Aggregations & Grouping
- Workforce Analytics
- Segmentation Analysis
- Business Intelligence

### Data Analysis

- Exploratory Data Analysis (EDA)
- Trend Identification
- Risk Assessment
- Root Cause Analysis
- Insight Generation

### Business & Communication

- Executive Reporting
- Data Storytelling
- Strategic Recommendations
- Decision Support

### Tools

- Google BigQuery
- SQL
- GitHub
- Gemini in BigQuery

---

## Methodology & AI Usage Disclosure

### Analysis Environment

- Google BigQuery
- SQL
- GitHub

### AI-Assisted Workflow

Gemini in BigQuery was used to assist with:

- SQL query generation
- Exploratory analysis
- Pattern identification
- Insight discovery

All queries, findings, interpretations, and recommendations were reviewed, validated, and refined through manual analysis.

---

## Disclaimer

This project was conducted for educational and portfolio purposes using a publicly available dataset from Kaggle.

The analysis does not represent any real organization and is intended to demonstrate SQL, data analysis, business intelligence, and executive reporting skills.

---

## Conclusion

This analysis identified overtime, job role, compensation, tenure, and job satisfaction as the strongest factors associated with employee attrition.

The findings suggest that attrition risk is concentrated within specific employee segments rather than uniformly distributed across the workforce. By focusing on workload management, employee experience, compensation competitiveness, and targeted retention strategies, organizations can proactively address turnover risk and improve workforce stability.
