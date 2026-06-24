/* =====================================
   CUSTOMER CHURN V2
   FILE: 02_customer_analysis.sql
   PURPOSE: Business Analysis
===================================== */

-- Customers by Contract Type

SELECT
    Contract,
    COUNT(*) AS customers
FROM customer_churn_master
GROUP BY Contract
ORDER BY customers DESC;

SELECT
    Contract,
    Churn,
    COUNT(*) AS customers
FROM customer_churn_master
GROUP BY Contract, Churn
ORDER BY Contract;

-- Churn Rate by Contract Type

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END
    ) AS churned_customers,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_master
GROUP BY Contract
ORDER BY churn_rate DESC;

-- Churn Rate by Payment Method

SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(
        CASE
            WHEN Churn = 'Yes' THEN 1
            ELSE 0
        END
    ) AS churned_customers,
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_master
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;

-- Revenue Lost Due To Churn

SELECT
    ROUND(
        SUM(MonthlyCharges),
        2
    ) AS monthly_revenue_lost
FROM customer_churn_master
WHERE Churn = 'Yes';

-- Average Revenue Per Churned Customer

SELECT
    ROUND(
        AVG(MonthlyCharges),
        2
    ) AS avg_revenue_churned_customer
FROM customer_churn_master
WHERE Churn = 'Yes';

-- Average Monthly Charges by Churn Status

SELECT
    Churn,
    ROUND(AVG(MonthlyCharges),2) AS avg_monthly_charge
FROM customer_churn_master
GROUP BY Churn;

-- Overall Churn Rate

SELECT
    ROUND(
        100.0 *
        SUM(
            CASE
                WHEN Churn = 'Yes' THEN 1
                ELSE 0
            END
        ) / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn_master;