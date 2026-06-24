CREATE OR REPLACE VIEW vw_customer_segments AS

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

SELECT *
FROM vw_customer_segments;