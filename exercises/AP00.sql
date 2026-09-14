USE ULHT_DB26;
GO

SELECT TOP 5
    employee_id,
    first_name,
    last_name,
    salary
FROM HR.EMPLOYEES

ORDER BY employee_id;