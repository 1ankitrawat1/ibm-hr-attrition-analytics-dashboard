USE hr_analytics_db;

-- Table for employee personal and demographic data view
CREATE OR REPLACE VIEW vw_dim_demographics AS
SELECT 
    EmployeeNumber,
    Age,
    Gender,
    MaritalStatus,
    Education,
    EducationField
FROM hr_employee_raw;


--  Employee Job Details View
CREATE OR REPLACE VIEW vw_dim_job_details AS
SELECT 
    EmployeeNumber,
    Department,
    JobRole,
    JobLevel,
    BusinessTravel,
    OverTime
FROM hr_employee_raw;


-- Employee Performance & Attrition View
CREATE OR REPLACE VIEW vw_fact_employee_performance AS
SELECT 
    EmployeeNumber,
    Attrition,
    DailyRate,
    DistanceFromHome,
    EnvironmentSatisfaction,
    HourlyRate,
    JobInvolvement,
    JobSatisfaction,
    MonthlyIncome,
    MonthlyRate,
    NumCompaniesWorked,
    PercentSalaryHike,
    PerformanceRating,
    RelationshipSatisfaction,
    StockOptionLevel,
    TotalWorkingYears,
    TrainingTimesLastYear,
    WorkLifeBalance,
    YearsAtCompany,
    YearsInCurrentRole,
    YearsSinceLastPromotion,
    YearsWithCurrManager
FROM hr_employee_raw;