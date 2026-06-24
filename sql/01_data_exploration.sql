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