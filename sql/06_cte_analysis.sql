/* =====================================
   CUSTOMER CHURN V2
   FILE: 06_cte_analysis.sql
   PURPOSE: Learning CTEs
===================================== */

WITH churned_customers AS
(
    SELECT *
    FROM customer_churn_master
    WHERE Churn = 'Yes'
)

SELECT
    COUNT(*) AS total_churned_customers
FROM churned_customers;




WITH churned_customers AS
(
    SELECT *
    FROM customer_churn_master
    WHERE Churn = 'Yes'
)

SELECT
    ROUND(
        SUM(TotalCharges),
        2
    ) AS revenue_at_risk
FROM churned_customers;