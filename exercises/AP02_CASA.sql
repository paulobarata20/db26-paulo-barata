USE ULHT_DB26;
GO
 
-- 16 
SELECT REGION_ID, REGION_NAME
FROM HR.REGIONS
ORDER BY REGION_ID;
 
-- 17 
SELECT COUNTRY_ID, COUNTRY_NAME, REGION_ID
FROM HR.COUNTRIES
ORDER BY COUNTRY_NAME;
 
-- 18 
SELECT TOP 10 LOCATION_ID, CITY, STATE_PROVINCE, COUNTRY_ID
FROM HR.LOCATIONS
ORDER BY LOCATION_ID;
 
-- 19
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, HIRE_DATE
FROM HR.EMPLOYEES
WHERE HIRE_DATE >= '2005-01-01'
ORDER BY HIRE_DATE, EMPLOYEE_ID;
 
-- 20
SELECT EMPLOYEE_ID, LAST_NAME, SALARY
FROM HR.EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 8000
ORDER BY SALARY, EMPLOYEE_ID;
 
-- 21
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME
FROM HR.EMPLOYEES
WHERE LAST_NAME LIKE 'S%'
ORDER BY LAST_NAME, EMPLOYEE_ID;
 
-- 22
SELECT DISTINCT JOB_ID
FROM HR.EMPLOYEES
ORDER BY JOB_ID;
 
-- 23 
SELECT COUNT(*) AS Total_Colaboradores
FROM HR.EMPLOYEES;
 
-- 24
SELECT MIN(SALARY) AS Salario_Minimo,
       MAX(SALARY) AS Salario_Maximo,
       AVG(SALARY) AS Salario_Medio
FROM HR.EMPLOYEES;
 
-- 25
SELECT DEPARTMENT_ID, COUNT(*) AS Total_Colaboradores
FROM HR.EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;
 
-- 26 
INSERT INTO dbo.AP02_LAB (id, nome, cidade, pontos, ativo)
VALUES (104, 'Diana', NULL, 8, 1);
 
SELECT * FROM dbo.AP02_LAB WHERE id = 104;
 
-- 27 
INSERT INTO dbo.AP02_LAB (id, nome, cidade, pontos, ativo)
VALUES (101, 'Ana', 'Lisboa', 10, 1);
/* Erro esperado:
   Msg 2627, Level 14, State 1
   Violation of PRIMARY KEY constraint 'PK__AP02_LAB__...'.
   Cannot insert duplicate key in object 'dbo.AP02_LAB'.
   The duplicate key value is (101).
   Explicação: id é PRIMARY KEY, logo não pode haver dois valores iguais;
   já existe uma linha com id = 101, por isso o INSERT é rejeitado
   e nada é inserido. */
 
-- 28 
INSERT INTO dbo.AP02_LAB (id, nome)
VALUES (105, 'Eva');
 
SELECT * FROM dbo.AP02_LAB WHERE id = 105;
 
-- 29 
SELECT * FROM dbo.AP02_LAB WHERE ativo = 1;
 
UPDATE dbo.AP02_LAB
SET pontos = pontos + 5
WHERE ativo = 1;
 
SELECT * FROM dbo.AP02_LAB WHERE ativo = 1;
 
-- 30
SELECT id, nome, pontos FROM dbo.AP02_LAB WHERE id = 101;  -- antes
 
BEGIN TRANSACTION;
 
UPDATE dbo.AP02_LAB
SET pontos = pontos + 100
WHERE id = 101;
 
SELECT id, nome, pontos FROM dbo.AP02_LAB WHERE id = 101;  -- dentro da transação (+100)
 
ROLLBACK;
 
SELECT id, nome, pontos FROM dbo.AP02_LAB WHERE id = 101;  -- depois (inalterado)
 