/* =====================================
   CUSTOMER CHURN V2
   FILE: 04_health_score.sql
   PURPOSE: Customer Health Score
===================================== */

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

SELECT
    customerID,
    tenure,
    MonthlyCharges,
    Contract,

    CASE
        WHEN tenure >= 60
             AND Contract = 'Two year'
        THEN 'Low Risk'

        WHEN tenure >= 24
        THEN 'Medium Risk'

        ELSE 'High Risk'
    END AS risk_category

FROM customer_churn_master;