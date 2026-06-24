/* =====================================
   CUSTOMER CHURN V2
   FILE: 01_data_exploration.sql
   PURPOSE: Basic dataset exploration
===================================== */

-- 1. Total Customers

SELECT COUNT(*) AS total_customers
FROM customer_churn_master;


-- 2. Churn Distribution

SELECT
    Churn,
    COUNT(*) AS customers
FROM customer_churn_master
GROUP BY Churn;


-- 3. Gender Distribution

SELECT
    gender,
    COUNT(*) AS customers
FROM customer_churn_master
GROUP BY gender;


-- 4. Contract Distribution

SELECT
    Contract,
    COUNT(*) AS customers
FROM customer_churn_master
GROUP BY Contract;


-- 5. Average Monthly Charges

SELECT
    ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charge
FROM customer_churn_master;

-- Churned Customers

SELECT COUNT(*) AS churned_customers
FROM customer_churn_master
WHERE Churn = 'Yes';


-- Long-Term Customers

SELECT COUNT(*) AS loyal_customers
FROM customer_churn_master
WHERE tenure > 60;


-- Month-to-Month Churners

SELECT COUNT(*) AS month_to_month_churners
FROM customer_churn_master
WHERE Contract = 'Month-to-month'
AND Churn = 'Yes';

-- Unique Contract Types

SELECT DISTINCT Contract
FROM customer_churn_master;

-- Unique Payment Methods

SELECT DISTINCT PaymentMethod
FROM customer_churn_master;

-- Unique Internet Services

SELECT DISTINCT InternetService
FROM customer_churn_master;

-- Top 10 Customers By Monthly Charges

SELECT
    customerID,
    MonthlyCharges
FROM customer_churn_master
ORDER BY MonthlyCharges DESC
LIMIT 10; 

-- Top 10 Customers By Total Charges

SELECT
    customerID,
    TotalCharges
FROM customer_churn_master
ORDER BY TotalCharges DESC
LIMIT 10;

-- Lowest Monthly Charges

SELECT
    customerID,
    MonthlyCharges
FROM customer_churn_master
ORDER BY MonthlyCharges
LIMIT 10;

--Cleaning tenure column for 11 values 

SELECT
    COUNT(*)
FROM customer_churn_master
WHERE TotalCharges = '';

SELECT COUNT(*)
FROM customer_churn_master
WHERE TotalCharges IS NULL;

SELECT COUNT(*)
FROM customer_churn_master
WHERE TRIM(TotalCharges) = '';

SELECT *
FROM customer_churn_master
WHERE tenure = 0;

SELECT
    customerID,
    tenure,
    TotalCharges
FROM customer_churn_master
WHERE TRIM(TotalCharges) = '';

UPDATE customer_churn_master
SET TotalCharges = '0'
WHERE TRIM(TotalCharges) = '';

SELECT COUNT(*)
FROM customer_churn_master
WHERE TRIM(TotalCharges) = '';

SELECT COUNT(*)
FROM customer_churn_master
WHERE TotalCharges = '0';

--changing data type of totalCharges from character to numeric

ALTER TABLE customer_churn_master
ALTER COLUMN TotalCharges
TYPE NUMERIC(10,2)
USING TotalCharges::NUMERIC;

SELECT
    column_name,
    data_type
FROM information_schema.columns
WHERE table_name = 'customer_churn_master';