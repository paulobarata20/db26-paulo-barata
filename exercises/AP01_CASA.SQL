USE ULHT_DB26;
GO

-- EXERCICIOS DE CASA (11-20)

-- EX 11
SELECT
    COUNTRY_ID, 
    COUNTRY_NAME, 
    REGION_ID
FROM HR.COUNTRIES;

-- EX 12
SELECT TOP 10
    LOCATION_ID,
    CITY,
    STATE_PROVINCE,
    COUNTRY_ID
FROM HR.LOCATIONS;

-- EX 13
SELECT TOP 10
    EMPNO,
    ENAME,
    JOB,
    SAL
FROM SCOTT.EMP;

-- EX 14
SELECT 
    DEPTNO,
    DNAME,
    LOC
FROM SCOTT.DEPT;

--UTILIZANDO A BIKESTORES BD
USE BIKESTORES;
GO

-- EX 15
SELECT 
    CATEGORY_ID,
    CATEGORY_NAME
FROM PRODUCTION.CATEGORIES;

-- EX 16
SELECT 
    BRAND_ID,
    BRAND_NAME
FROM PRODUCTION.BRANDS;

-- EX 17
SELECT 
    PRODUCT_ID,
    PRODUCT_NAME,
    MODEL_YEAR,
    LIST_PRICE
FROM PRODUCTION.PRODUCTS;

-- EX 18
SELECT TOP 10
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    CITY
FROM SALES.CUSTOMERS

-- EX 19
SELECT
    STORE_ID,
    STORE_NAME,
    PHONE,
    EMAIL,
    CITY
FROM SALES.STORES;

-- EX 20
-- BASE 1: ULHT_DB26
USE ULHT_DB26;
GO
-- Top 5 empregados com informações úteis para identificação e contacto.
SELECT TOP 5
    employee_id,
    first_name,
    last_name,
    salary,
    email
FROM HR.EMPLOYEES
ORDER BY employee_id;

-- BASE 2: BikeStores
USE BIKESTORES;
GO
-- Top 5 clientes com dados úteis para contacto e localização.
USE BikeStores;
SELECT TOP 5
    customer_id,
    first_name,
    last_name,
    email,
    city
FROM sales.customers
ORDER BY customer_id;
