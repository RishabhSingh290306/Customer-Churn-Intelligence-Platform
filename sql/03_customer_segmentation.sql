/* =====================================
   CUSTOMER CHURN V2
   FILE: 03_customer_segmentation.sql
   PURPOSE: Customer Segmentation
===================================== */

SELECT
    customerID,
    tenure,
    MonthlyCharges,

    CASE
        WHEN tenure >= 60 THEN 'Champion'
        WHEN tenure >= 36 THEN 'Loyal'
        WHEN tenure >= 12 THEN 'Potential Loyalist'
        WHEN tenure >= 6 THEN 'At Risk'
        ELSE 'Lost'
    END AS customer_segment

FROM customer_churn_master;

SELECT
    CASE
        WHEN tenure >= 60 THEN 'Champion'
        WHEN tenure >= 36 THEN 'Loyal'
        WHEN tenure >= 12 THEN 'Potential Loyalist'
        WHEN tenure >= 6 THEN 'At Risk'
        ELSE 'Lost'
    END AS customer_segment,
    COUNT(*) AS customers
FROM customer_churn_master
GROUP BY customer_segment
ORDER BY customers DESC;