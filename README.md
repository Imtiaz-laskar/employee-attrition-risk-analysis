<div align="center">

<br/>

```
 █████╗ ████████╗████████╗██████╗ ██╗████████╗██╗ ██████╗ ███╗   ██╗
██╔══██╗╚══██╔══╝╚══██╔══╝██╔══██╗██║╚══██╔══╝██║██╔═══██╗████╗  ██║
███████║   ██║      ██║   ██████╔╝██║   ██║   ██║██║   ██║██╔██╗ ██║
██╔══██║   ██║      ██║   ██╔══██╗██║   ██║   ██║██║   ██║██║╚██╗██║
██║  ██║   ██║      ██║   ██║  ██║██║   ██║   ██║╚██████╔╝██║ ╚████║
╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝╚═╝   ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝

         ──── EMPLOYEE ATTRITION RISK ANALYSIS ────
     Workforce Intelligence · Google BigQuery SQL · Retention Strategy
```

<br/>

[![Platform](https://img.shields.io/badge/Platform-Google%20BigQuery-4285F4?style=for-the-badge&logo=google-cloud&logoColor=white)](#)
[![Language](https://img.shields.io/badge/Language-SQL-e67e00?style=for-the-badge&logo=postgresql&logoColor=white)](#)
[![Attrition Rate](https://img.shields.io/badge/Attrition%20Rate-16.12%25-c0392b?style=for-the-badge&logo=chartdotjs&logoColor=white)](#)
[![Top Risk Factor](https://img.shields.io/badge/Top%20Risk-Overtime%2030.53%25-1a7f37?style=for-the-badge&logo=clockify&logoColor=white)](#)

<br/>

> A workforce analytics case study demonstrating how **Google BigQuery SQL** can identify employee attrition patterns, quantify retention risk, and surface actionable recommendations for workforce planning.

<br/>

📄 **Executive Deck** → [`deck-attrition-executive.pdf`](https://github.com/Imtiaz-laskar/employee-attrition-risk-analysis/blob/main/deck-attrition-executive.pdf)

<br/>

---

</div>

## 📊 Executive Snapshot

<div align="center">

| Metric | Value |
|:---:|:---:|
| 👥 **Total Employees Analysed** | **1,470** |
| 📉 **Overall Attrition Rate** | **16.12%** |
| 🚨 **Total Attrition Cases** | **237** |
| 🏢 **Departments Covered** | **3** |
| 💼 **Job Roles Examined** | **9** |
| 🔴 **Highest-Risk Role** | **Sales Representative — 39.76%** |
| ⚡ **Strongest Risk Factor** | **Overtime — 30.53% vs. 10.44% baseline** |

</div>

---

## ❓ Business Question

<div align="center">

> *"Which workforce characteristics are most strongly associated with employee attrition, and where should retention efforts be prioritized?"*

</div>

---

## 🔍 Analytical Approach

```
┌────────────────────────────────────────────────────────────────────┐
│                    4-STAGE ANALYSIS PIPELINE                       │
├──────────────┬──────────────────┬───────────────┬──────────────────┤
│   STAGE 1    │    STAGE 2       │   STAGE 3     │    STAGE 4       │
│              │                  │               │                  │
│    Data      │   Workforce      │     Risk      │    Business      │
│ Exploration  │  Segmentation    │Identification │    Insights      │
│     &        │                  │               │   Generation     │
│  Validation  │                  │               │                  │
└──────────────┴──────────────────┴───────────────┴──────────────────┘
```

**Key dimensions analysed across all stages:**

| Dimension | Focus |
|:---|:---|
| 🏢 Departments | Comparative attrition rates across organisational units |
| 💼 Job Roles | Role-level risk stratification across 9 functions |
| ⏱️ Overtime | Correlation between excess hours and turnover probability |
| 💰 Compensation | Pay band impact on attrition likelihood |
| 😊 Job Satisfaction | Sentiment-attrition relationship mapping |
| 📅 Employee Tenure | Early-tenure vs. long-tenure risk profiling |

---

## 🔑 Key Findings

```
┌─────────────────────────────────────────────────────────────────────┐
│                         CRITICAL RISK SIGNALS                       │
├─────────────────────────────────────────────────────────────────────┤
│                                                                     │
│  ⚡ OVERTIME (Strongest Overall Factor)                             │
│     Attrition Rate:  30.53%  (with OT)  vs.  10.44%  (without OT) │
│     Risk Multiplier: ████████████████░░░░░  ~3× higher             │
│                                                                     │
│  🔴 SALES REPRESENTATIVE (Highest-Risk Role)                        │
│     Overall Role Attrition:       39.76%                            │
│     Sales Rep + Overtime combo:   66.67%  ← extreme risk zone      │
│                                                                     │
│  🏢 SALES DEPARTMENT (Highest-Risk Department)                      │
│     Departmental Attrition Rate:  20.63%                            │
│                                                                     │
│  📉 COMPOUNDING RISK FACTORS                                        │
│     Lower compensation  ──►  Higher attrition                      │
│     Lower job satisfaction  ──►  Higher attrition                  │
│     Shorter tenure  ──►  Higher early-exit probability              │
│                                                                     │
└─────────────────────────────────────────────────────────────────────┘
```

---

## 🎯 Strategic Recommendations

<table>
<tr>
<td width="36"><b>①</b></td>
<td><b>Reduce Excessive Overtime</b> — Address the single highest-impact attrition driver. Audit workload distribution in Sales and enforce sustainable hours policies.</td>
</tr>
<tr>
<td><b>②</b></td>
<td><b>Prioritise High-Risk Job Roles</b> — Deploy targeted retention programmes for Sales Representatives, who face nearly 40% attrition — and 67% when combining overtime.</td>
</tr>
<tr>
<td><b>③</b></td>
<td><b>Improve Employee Experience</b> — Invest in satisfaction drivers: managerial quality, career growth clarity, and recognition frameworks, particularly in the Sales department.</td>
</tr>
<tr>
<td><b>④</b></td>
<td><b>Review Compensation Competitiveness</b> — Benchmark pay bands for high-attrition roles against market rates; address gaps at the lower compensation tiers first.</td>
</tr>
<tr>
<td><b>⑤</b></td>
<td><b>Strengthen Early-Tenure Retention</b> — Introduce structured onboarding, 30/60/90-day check-ins, and mentoring programmes to reduce short-tenure exits.</td>
</tr>
</table>

---

## 🛠️ Tech Stack

```
┌──────────────────────────────────────────────────────────────────┐
│              EMPLOYEE ATTRITION RISK ANALYSIS STACK              │
├──────────────────────┬───────────────────────────────────────────┤
│  Data Warehouse      │  Google BigQuery                          │
│  Query Language      │  SQL                                      │
│  AI Assistance       │  Gemini in BigQuery                       │
│  Documentation       │  GitHub Markdown                          │
│  Version Control     │  Git                                      │
└──────────────────────┴───────────────────────────────────────────┘
```

---

## 🧠 Skills Demonstrated

<table>
<thead>
<tr>
<th>📊 Analytics</th>
<th>🗄️ SQL</th>
<th>💼 Business</th>
</tr>
</thead>
<tbody>
<tr>
<td>Workforce Analytics</td>
<td>Data Aggregation</td>
<td>Executive Reporting</td>
</tr>
<tr>
<td>Exploratory Data Analysis</td>
<td>Grouping & Filtering</td>
<td>Data Storytelling</td>
</tr>
<tr>
<td>Segmentation Analysis</td>
<td>Conditional Logic</td>
<td>Business Insights</td>
</tr>
<tr>
<td>Risk Assessment</td>
<td>KPI Reporting</td>
<td>Strategic Recommendations</td>
</tr>
</tbody>
</table>

---

## 📁 Repository Structure

```
employee-attrition-risk-analysis/
│
├── 📄  README.md
├── 📑  deck-attrition-executive.pdf       ← Start here
│
└── 📂  reports/
    ├── 📝  executive_summary.md
    ├── 📂  sql/                            ← All BigQuery queries
    ├── 📂  evidence/                       ← Supporting screenshots & data
    └── 📂  docs/                           ← Extended documentation
```

---

## 🤖 AI Usage Disclosure

Gemini in BigQuery was used to support SQL development and exploratory analysis. All queries, findings, interpretations, and documentation were **independently reviewed and validated** by the author before publication. No AI-generated output was published without human verification.

---

## ⚠️ Disclaimer

This project uses a publicly available dataset for educational and portfolio demonstration purposes. It showcases applied SQL, workforce analytics, business intelligence, and executive communication skills.

---

<div align="center">

**Data doesn't just describe attrition — it predicts and prevents it.**

<br/>

*Employee Attrition Risk Analysis — Turning workforce signals into retention strategy.*

<br/>

`© 2026 Imtiaz Hussain Laskar. All Rights Reserved.`

</div>
