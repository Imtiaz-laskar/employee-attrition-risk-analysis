# Employee Attrition Risk Analysis

### Identifying Workforce Retention Risks Using Google BigQuery SQL

A workforce analytics case study demonstrating how SQL can be used to identify employee attrition patterns and support data-driven retention strategies.

---

## 📄 Executive Presentation

Start with the executive presentation for a concise overview of the project, including the business problem, analytical approach, key findings, business implications, and strategic recommendations.

**Presentation:** `deck-attrition-executive.pdf` |(https://github.com/Imtiaz-laskar/employee-attrition-risk-analysis/blob/main/deck-attrition-executive.pdf)

---

## Project Overview

Employee attrition impacts productivity, hiring costs, and organizational continuity. This project uses **Google BigQuery SQL** to analyze workforce data and identify the factors most strongly associated with employee turnover.

The analysis examines departments, job roles, overtime, compensation, job satisfaction, and tenure to generate actionable business insights.

---

## Executive Snapshot

| Metric | Value |
|---------|------:|
| Total Employees | **1,470** |
| Attrition Rate | **16.12%** |
| Attrition Cases | **237** |
| Departments | **3** |
| Job Roles | **9** |
| Highest-Risk Role | **Sales Representative (39.76%)** |
| Strongest Risk Factor | **Overtime (30.53%)** |

---

## Business Question

> **Which workforce characteristics are most strongly associated with employee attrition, and where should retention efforts be prioritized?**

---

## Technology Stack

- **Data Warehouse:** Google BigQuery
- **Query Language:** SQL
- **Documentation:** GitHub
- **Version Control:** Git
- **AI Assistance:** Gemini in BigQuery

---

## Analytical Approach

The analysis followed four stages:

1. Data exploration and validation
2. Workforce segmentation
3. Risk identification
4. Business insight generation

Key dimensions analyzed:

- Departments
- Job Roles
- Overtime
- Compensation
- Job Satisfaction
- Employee Tenure

---

## Key Findings

- **Overtime** showed the strongest association with attrition (30.53% vs. 10.44%).
- **Sales Representatives** experienced the highest attrition rate (39.76%).
- **Sales Representatives working overtime** recorded the highest turnover (66.67%).
- Lower compensation, lower job satisfaction, and shorter tenure were associated with higher attrition.
- The **Sales Department** reported the highest departmental attrition (20.63%).

---

## Strategic Recommendations

- Reduce excessive overtime.
- Prioritize high-risk job roles.
- Improve employee experience.
- Review compensation competitiveness.
- Strengthen early-tenure retention.

---

## Repository Structure

```text
employee-attrition-risk-analysis/
│
├── README.md
├── deck-attrition-executive.pdf
├── reports/
│   ├── executive_summary.md
│   ├── sql/
│   ├── evidence/
│   └── docs/
└── LICENSE
```

---

## Skills Demonstrated

**Analytics**

- Workforce Analytics
- Exploratory Data Analysis
- Segmentation Analysis
- Risk Assessment

**SQL**

- Data Aggregation
- Grouping & Filtering
- Conditional Logic
- KPI Reporting

**Business**

- Executive Reporting
- Data Storytelling
- Business Insights
- Strategic Recommendations

---

## AI Usage

Gemini in BigQuery was used to support SQL development and exploratory analysis. All queries, findings, interpretations, and documentation were independently reviewed and validated before publication.

---

## Disclaimer

This project uses a publicly available dataset for educational and portfolio purposes. It demonstrates SQL, workforce analytics, business intelligence, and executive reporting skills.

---

## Conclusion

This project demonstrates how workforce analytics can identify employee attrition risks and translate data into practical business recommendations. By combining SQL analysis with executive reporting, it highlights how data can support informed workforce planning and retention strategies.
