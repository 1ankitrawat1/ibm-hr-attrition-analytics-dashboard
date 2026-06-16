## 📖 Data Dictionary

This data dictionary provides a comprehensive breakdown of the database schema used in this project. The raw transactional data was structured into a Star Schema consisting of two dimension views and one central fact view.

---

### 👤 1. View: `vw_dim_demographics`
**Description:** Tracks personal and demographic attributes of the employees.

| Column Name | Data Type | Description | Example Values |
| :--- | :--- | :--- | :--- |
| **EmployeeNumber** | `INT (PK)` | Unique identifier assigned to each employee (Used for primary relationships). | `1`, `2`, `4` |
| **Age** | `INT` | Current age of the employee. | `41`, `49`, `37` |
| **Gender** | `VARCHAR` | Biological sex of the employee. | `Male`, `Female` |
| **MaritalStatus** | `VARCHAR` | Marital status of the employee. | `Single`, `Married`, `Divorced` |
| **Education** | `INT` | Highest education level achieved (Scale of 1 to 5). | `1 (Below College) - 5 (Doctor)` |
| **EducationField** | `VARCHAR` | Specialized field of core education. | `Life Sciences`, `Medical`, `Marketing` |

---

### 💼 2. View: `vw_dim_job_details`
**Description:** Contains workplace attributes, job roles, department assignments, and operational status.

| Column Name | Data Type | Description | Example Values |
| :--- | :--- | :--- | :--- |
| **EmployeeNumber** | `INT (FK)` | Reference ID linking to the demographics and fact tables. | `1`, `2`, `4` |
| **Department** | `VARCHAR` | Core department where the employee operates. | `Sales`, `Research & Development`, `Human Resources` |
| **JobRole** | `VARCHAR` | Specific designation or profile of the employee. | `Sales Executive`, `Laboratory Technician` |
| **JobLevel** | `INT` | Tier or hierarchy level of the job (Scale of 1 to 5). | `1 (Junior) - 5 (Executive)` |
| **BusinessTravel** | `VARCHAR` | Frequency of business-related travel required. | `Travel_Rarely`, `Travel_Frequently`, `Non-Travel` |
| **OverTime** | `VARCHAR` | Indicates if the employee officially works extra hours outside regular shifts. | `Yes`, `No` |

---

### 📊 3. View: `vw_fact_employee_performance`
**Description:** The central fact table housing all numerical metrics, compensation details, and key performance/satisfaction scores.

| Column Name | Data Type | Description | Example Values |
| :--- | :--- | :--- | :--- |
| **EmployeeNumber** | `INT (FK)` | Reference ID linking to the dimension tables. | `1`, `2`, `4` |
| **Attrition** | `VARCHAR` | Core risk factor indicating current status (Cleaned via Power Query). | `Active` (Stayed), `Terminated` (Left) |
| **MonthlyIncome** | `INT` | Base monthly salary of the employee in USD ($). | `5993`, `5130`, `2090` |
| **DistanceFromHome** | `INT` | Distance between the employee's residence and office (in Km). | `1`, `8`, `2` |
| **PercentSalaryHike** | `INT` | Percentage increase in salary during the last appraisal cycle. | `11`, `23`, `15` |
| **PerformanceRating** | `INT` | Latest performance appraisal score given by the immediate manager. | `3 (Excellent)`, `4 (Outstanding)` |
| **JobSatisfaction** | `INT` | Feedback rating on current work role satisfaction. | `1 (Low) - 4 (Very High)` |
| **EnvironmentSatisfaction**| `INT` | Feedback rating on workplace environment and comfort level. | `1 (Low) - 4 (Very High)` |
| **WorkLifeBalance** | `INT` | Feedback score on managing work pressure versus personal life. | `1 (Bad) - 4 (Best)` |
| **YearsAtCompany** | `INT` | Total tenure/years spent working within the organization. | `6`, `10`, `0` |
| **YearsSinceLastPromotion**| `INT` | Number of years passed since the employee's last official promotion. | `0`, `1`, `3` |
| **YearsWithCurrManager** | `INT` | Total consecutive years spent working under the current immediate supervisor. | `5`, `7`, `0` |