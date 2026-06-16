USE hr_analytics_db;

SELECT COUNT(*) FROM hr_employee_raw;

-- Dropping constant columns that have same values in all rows
ALTER TABLE hr_employee_raw 
DROP COLUMN EmployeeCount,
DROP COLUMN Over18,
DROP COLUMN StandardHours;


SELECT * FROM hr_employee_raw;