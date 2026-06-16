# IBM HR Analytics Employee Attrition Dashboard

## Dashboard Preview

### Workforce Overview

![Workforce Overview](05_screenshots/01_workforce_overview.jpg)

### Attrition and Risk Analysis

![Attrition and Risk Analysis](05_screenshots/02_attrition_risk_analysis.jpg)

## Project Overview

This project analyzes employee attrition using SQL and Power BI. The objective was to identify attrition drivers, create a clean reporting model, and build an interactive HR dashboard.

## Business Problem

HR teams need to understand why employees leave and which groups are at risk. This project answers:

- What is the overall attrition rate?
- Which departments have the highest attrition?
- How does overtime affect attrition?
- Which job roles are most vulnerable?
- How does job satisfaction relate to attrition?
- Which groups need retention attention?

## Dataset

The dataset contains 1,470 employee records and 35 columns.

Key fields:

- Age
- Attrition
- Business Travel
- Department
- Distance From Home
- Education
- Gender
- Job Role
- Job Satisfaction
- Monthly Income
- Overtime
- Performance Rating
- Work Life Balance
- Years At Company

## Tools Used

- MySQL Workbench
- SQL
- Power BI Desktop
- Power Query
- DAX
- Data Modeling

## SQL Workflow

1. Created HR analytics database.
2. Loaded employee records into a raw table.
3. Removed constant columns.
4. Explored attrition by department and overtime.
5. Created star-schema views:
   - `vw_dim_demographics`
   - `vw_dim_job_details`
   - `vw_fact_employee_performance`

## Dashboard Pages

- Workforce Overview
- Attrition and Risk Analysis

## Key Insights

- Overall attrition rate: 16.12%
- Overtime attrition rate: 30.53%
- Non-overtime attrition rate: 10.44%
- Sales Representative attrition rate: 39.76%
- Laboratory Technician attrition rate: 23.94%
- Attrition decreases as job satisfaction increases.

## Repository Structure

```text
ibm-hr-attrition-analytics-dashboard/
|-- README.md
|-- 01_data/
|   |-- raw/
|-- 02_sql_scripts/
|   |-- 01_database_setup.sql
|   |-- 02_data_cleaning.sql
|   |-- 03_data_exploration.sql
|   |-- 04_star_schema_views.sql
|-- 03_powerbi/
|   |-- HR_Attrition_Dashboard.pbix
|-- 04_screenshots/
|   |-- 01_workforce_overview.png
|   |-- 02_attrition_risk_analysis.png
|-- docs/
|   |-- data_dictionary.md
```

## Skills Demonstrated

- HR Analytics
- SQL Data Exploration
- Star Schema Modeling
- Power BI Dashboarding
- DAX Measures
- Workforce Risk Analysis

## Future Improvements

- Find employees with higher chances of leaving.
- Compare attrition across different tenure groups.
- Add simple retention suggestions for HR teams.
- Share the dashboard through Power BI Service.

