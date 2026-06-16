USE hr_analytics_db;

-- Overall attrition rate of company
SELECT 
    Attrition,
    COUNT(*) AS Employee_Count,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM hr_employee_raw), 2) AS Percentage
FROM hr_employee_raw
GROUP BY Attrition;

-- Department-wise attrition 
SELECT 
	DEPARTMENT,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS Attrition_Rate_Percent
    FROM hr_employee_raw
    GROUP BY Department
    ORDER BY Attrition_Rate_Percent DESC;
 
-- Overtime vs Attrition
SELECT 
	OverTime,
    COUNT(*) AS Total_Employee,
    SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END) AS Attrition_Count,
    ROUND(SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS Attrition_Rate_Percent
    FROM hr_employee_raw
    GROUP BY OverTime
    ORDER BY Attrition_Rate_percent;
 

    