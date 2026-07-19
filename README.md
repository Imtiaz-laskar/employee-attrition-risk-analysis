# Employee Attrition Risk Analysis
### Identifying Workforce Retention Risks Using BigQuery SQL

---

## Executive Summary

Employee attrition represents a significant workforce and operational challenge, affecting productivity, recruitment costs, institutional knowledge retention, and organizational continuity.

This project analyzes employee attrition patterns using SQL in Google BigQuery to identify the factors most strongly associated with workforce turnover. The analysis evaluates attrition across departments, job roles, overtime status, compensation, job satisfaction, and employee tenure to determine where retention risks are concentrated.

The findings indicate that attrition is not evenly distributed across the workforce. Instead, turnover is disproportionately concentrated among employees working overtime, specific job roles, lower-income segments, and employees with shorter organizational tenure.

Among all factors analyzed, overtime emerged as the strongest predictor of attrition, while Sales Representatives working overtime represented the highest-risk employee segment.

---

## Business Question

> Which workforce characteristics are most strongly associated with employee attrition, and where should retention efforts be prioritized to achieve the greatest impact?

---

## Project Objectives

The analysis seeks to:

- Quantify overall employee attrition.
- Identify departments and job roles with elevated turnover risk.
- Assess the relationship between overtime and attrition.
- Evaluate compensation patterns among attrited employees.
- Examine the relationship between job satisfaction and turnover.
- Analyze tenure-related attrition trends.
- Translate analytical findings into actionable business recommendations.

---

## Data Source

This project uses a publicly available Employee Attrition dataset sourced from Kaggle.

The dataset contains employee demographic, compensation, job satisfaction, tenure, departmental, and work-related attributes commonly used in workforce analytics and retention studies.

### Dataset Overview

| Metric | Value |
|----------|----------|
| Total Employees | 1,470 |
| Total Attributes | 35 |
| Departments | 3 |
| Job Roles | 9 |
| Attrition Cases | 237 |
| Overall Attrition Rate | 16.12% |
| Dataset Size | 421 KB |

---

## Technology Stack

| Category | Tool |
|-----------|------|
| Data Warehouse | Google BigQuery |
| Query Language | SQL |
| Documentation | GitHub |
| AI Assistance | Gemini in BigQuery |
| Version Control | Git |

---

# Analytical Approach

The analysis followed a structured workforce analytics framework.

### Phase 1: Data Exploration

- Reviewed dataset structure and workforce composition.
- Validated record counts and attribute coverage.
- Identified variables relevant to retention analysis.

### Phase 2: Attrition Segmentation

Measured attrition across:

- Departments
- Job Roles
- Overtime Status
- Job Satisfaction
- Compensation
- Employee Tenure

### Phase 3: Risk Identification

Evaluated combinations of variables to identify concentrated areas of turnover risk.

Examples:

- Job Role + Overtime
- Compensation + Attrition
- Tenure + Attrition

### Phase 4: Insight Development

Translated SQL outputs into executive-level findings and business implications.

---

# Key Findings

---

## Finding 1: Overtime Emerged as the Strongest Attrition Driver

| Overtime Status | Employees | Attritions | Attrition Rate |
|----------------|-----------:|-----------:|---------------:|
| Yes | 416 | 127 | 30.53% |
| No | 1,054 | 110 | 10.44% |

### Insight

Employees working overtime experienced an attrition rate nearly three times higher than employees who did not work overtime.

### Business Implication

The magnitude of the difference suggests that workload intensity may be a significant contributor to employee turnover and should be a priority area for retention interventions.

---

## Finding 2: Attrition Risk Is Concentrated Within Specific Job Roles

| Job Role | Attrition Rate |
|-----------|---------------:|
| Sales Representative | 39.76% |
| Laboratory Technician | 23.94% |
| Human Resources | 23.08% |
| Sales Executive | 17.48% |
| Research Scientist | 16.10% |
| Manufacturing Director | 6.90% |

### Insight

Sales Representatives recorded the highest attrition rate (39.76%), more than double the organizational average of 16.12%, indicating a role-specific retention challenge.

### Business Implication

Retention initiatives should prioritize high-risk roles where turnover is most concentrated, enabling more targeted and efficient intervention strategies.

---

## Finding 3: Overtime Significantly Amplifies Role-Based Attrition Risk

| Job Role | Overtime | Attrition Rate |
|-----------|----------|---------------:|
| Sales Representative | Yes | 66.67% |
| Laboratory Technician | Yes | 50.00% |
| Human Resources | Yes | 38.46% |
| Research Scientist | Yes | 34.02% |
| Sales Executive | Yes | 32.98% |

### Insight

Employees occupying high-risk roles and simultaneously working overtime experienced substantially higher attrition rates than the workforce average.

### Business Implication

Retention efforts may generate greater impact when focused on specific high-risk employee segments rather than broad workforce-wide initiatives.

---

## Finding 4: Lower Job Satisfaction Is Associated With Higher Attrition

| Job Satisfaction | Attrition Rate |
|-----------------|---------------:|
| 1 (Lowest) | 22.84% |
| 2 | 16.43% |
| 3 | 16.52% |
| 4 (Highest) | 11.33% |

### Insight

Attrition declines consistently as job satisfaction improves, suggesting a meaningful relationship between employee experience and retention outcomes.

### Business Implication

Employee engagement and satisfaction indicators may serve as useful leading indicators for workforce retention monitoring.

---

## Finding 5: Employees Who Leave Earn Less on Average

| Attrition Status | Average Monthly Income |
|-----------------|-----------------------:|
| Stayed | 6,832.74 |
| Left | 4,787.09 |

### Insight

Employees who left the organization earned approximately 30% less on average than employees who remained.

### Business Implication

Compensation competitiveness may influence employee retention and warrants further review in high-turnover workforce segments.

---

## Finding 6: Attrition Is Higher Among Employees With Shorter Tenure

| Attrition Status | Average Years at Company |
|-----------------|-------------------------:|
| Stayed | 7.37 Years |
| Left | 5.13 Years |

### Insight

Employees who left the organization tended to do so earlier in their tenure compared to employees who remained.

### Business Implication

The first five years of employment appear to represent a critical retention window and may benefit from targeted engagement and development programs.

---

## Finding 7: Sales Experiences the Highest Departmental Attrition

| Department | Employees | Attrition Rate |
|------------|----------:|---------------:|
| Sales | 446 | 20.63% |
| Human Resources | 63 | 19.05% |
| Research & Development | 961 | 13.84% |

### Insight

Sales recorded the highest attrition rate among all departments, exceeding both Human Resources and Research & Development.

### Business Implication

Department-level retention strategies may be more effective than organization-wide interventions where turnover risk is concentrated.

---

## Finding 8: Distance From Home Demonstrates Limited Influence

### Insight

Analysis of commute distance did not reveal a consistent relationship with attrition.

### Business Implication

Compared with overtime, compensation, tenure, and satisfaction, commute distance appears to be a less significant predictor of employee turnover within this dataset.

---

# Recommendations

Based on the analysis, five priority actions emerge:

### 1. Reduce Excessive Overtime

- Monitor workload distribution.
- Improve workforce planning.
- Evaluate staffing capacity in high-risk functions.

### 2. Prioritize High-Risk Roles

Focus retention efforts on:

- Sales Representatives
- Sales Executives
- Laboratory Technicians

### 3. Strengthen Employee Experience

- Monitor engagement indicators.
- Improve feedback mechanisms.
- Address recurring workplace concerns.

### 4. Review Compensation Competitiveness

- Benchmark compensation for high-turnover roles.
- Evaluate potential pay-related retention risks.

### 5. Focus on Early-Tenure Retention

- Enhance onboarding programs.
- Expand career development opportunities.
- Improve manager support during the first five years.

---

# Repository Structure

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

# Skills Demonstrated

### Data Analytics

- Exploratory Data Analysis (EDA)
- Workforce Analytics
- Segmentation Analysis
- Trend Identification
- Risk Assessment

### SQL

- Data Aggregation
- Grouping & Filtering
- Conditional Logic
- Workforce KPI Analysis
- Business Reporting

### Business & Strategy

- Executive Reporting
- Data Storytelling
- Insight Generation
- Decision Support
- Strategic Recommendations

### Tools

- Google BigQuery
- SQL
- GitHub
- Gemini in BigQuery

---

# AI Usage Disclosure

Gemini in BigQuery was used to support:

- SQL query generation
- Exploratory analysis
- Pattern identification
- Insight discovery

All findings, interpretations, recommendations, and conclusions were reviewed, validated, and refined through manual analysis.

---

# Disclaimer

This project was conducted for educational and portfolio purposes using a publicly available dataset from Kaggle.

The analysis does not represent any real organization and is intended solely to demonstrate SQL, analytics, business intelligence, and executive reporting capabilities.

---

# Conclusion

The analysis indicates that attrition is primarily associated with workload intensity, role-specific dynamics, compensation levels, employee satisfaction, and tenure.

Rather than being uniformly distributed across the workforce, turnover is concentrated within identifiable employee segments, particularly those working overtime and occupying high-risk operational roles.

These findings suggest that targeted retention interventions focused on workload management, employee experience, compensation competitiveness, and early-career engagement may deliver greater impact than broad workforce-wide initiatives.
