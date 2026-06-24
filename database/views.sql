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


CREATE OR REPLACE VIEW vw_customer_health AS

SELECT
    customerID,
    tenure,
    MonthlyCharges,
    TotalCharges,

    ROUND(
        (
            tenure * 0.6
        ) +
        (
            MonthlyCharges * 0.2
        ) +
        (
            TotalCharges / 100 * 0.2
        ),
        2
    ) AS health_score,

    CASE
        WHEN (
            (tenure * 0.6)
            +
            (MonthlyCharges * 0.2)
            +
            (TotalCharges / 100 * 0.2)
        ) >= 80
        THEN 'Low Risk'

        WHEN (
            (tenure * 0.6)
            +
            (MonthlyCharges * 0.2)
            +
            (TotalCharges / 100 * 0.2)
        ) >= 50
        THEN 'Medium Risk'

        ELSE 'High Risk'

    END AS risk_category

FROM customer_churn_master;

SELECT *
FROM vw_customer_health
LIMIT 10;

SELECT
    risk_category,
    COUNT(*) AS customers
FROM vw_customer_health
GROUP BY risk_category;


CREATE OR REPLACE VIEW vw_revenue_risk AS

SELECT
    customerID,
    Contract,
    MonthlyCharges,
    TotalCharges,
    Churn

FROM customer_churn_master

WHERE Churn = 'Yes';

SELECT *
FROM vw_revenue_risk
LIMIT 10;


CREATE OR REPLACE VIEW vw_top_customers AS

SELECT
    customerID,
    Contract,
    TotalCharges,

    ROW_NUMBER() OVER(
        ORDER BY TotalCharges DESC
    ) AS customer_rank

FROM customer_churn_master;

SELECT *
FROM vw_top_customers
WHERE customer_rank <= 10;