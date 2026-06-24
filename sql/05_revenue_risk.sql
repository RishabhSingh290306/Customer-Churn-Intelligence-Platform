/* =====================================
   CUSTOMER CHURN V2
   FILE: 05_revenue_risk.sql
   PURPOSE: Revenue Risk Analysis
===================================== */

SELECT
    customerID,
    MonthlyCharges,
    TotalCharges
FROM customer_churn_master
ORDER BY TotalCharges DESC
LIMIT 20;

SELECT
    ROUND(
        SUM(TotalCharges),
        2
    ) AS revenue_at_risk
FROM customer_churn_master
WHERE Churn = 'Yes';

SELECT
    Contract,
    ROUND(
        SUM(TotalCharges),
        2
    ) AS revenue
FROM customer_churn_master
GROUP BY Contract
ORDER BY revenue DESC;

SELECT
    Churn,
    ROUND(
        AVG(TotalCharges),
        2
    ) AS avg_customer_value
FROM customer_churn_master
GROUP BY Churn;