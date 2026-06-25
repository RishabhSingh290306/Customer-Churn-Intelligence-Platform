/*
=========================================================
VIEW NAME : vw_customer_dashboard

PURPOSE :
Master reporting view used by Power BI dashboards.

DESCRIPTION :
Provides customer-level analytics including:
- Customer Segmentation
- Customer Health Score
- Risk Classification
- Customer Lifetime Value
- Retention Priority

DATA SOURCE :
customer_churn_master

AUTHOR :
Rishabh Singh

VERSION :
V3.0
=========================================================
*/

CREATE VIEW vw_customer_dashboard AS

WITH customer_scores AS
(
    SELECT

    /* =========================================
       CUSTOMER INFORMATION
    ========================================= */

    customerID,
    gender,
    SeniorCitizen,
    Partner,
    Dependents,

    /* =========================================
       SERVICE INFORMATION
    ========================================= */

    PhoneService,
    MultipleLines,
    InternetService,
    OnlineSecurity,
    OnlineBackup,
    DeviceProtection,
    TechSupport,
    StreamingTV,
    StreamingMovies,

    /* =========================================
       FINANCIAL INFORMATION
    ========================================= */

    tenure,
    Contract,
    PaymentMethod,
    MonthlyCharges,
    TotalCharges,
    Churn,

    /* =========================================
       CUSTOMER SEGMENT
    ========================================= */

    CASE

        WHEN tenure >= 60
             AND Contract = 'Two year'
             AND MonthlyCharges >= 70

        THEN 'Champion'

        WHEN tenure >= 36
             AND Contract IN ('One year','Two year')

        THEN 'Loyal'

        WHEN tenure >= 12

        THEN 'Potential Loyalist'

        WHEN tenure >= 6

        THEN 'At Risk'

        ELSE 'Lost'

    END AS customer_segment,

    /* =========================================
       CUSTOMER HEALTH SCORE (0-100)
    ========================================= */

    (

        /* Tenure */

        CASE

            WHEN tenure >= 60 THEN 30
            WHEN tenure >= 36 THEN 20
            WHEN tenure >= 12 THEN 10
            ELSE 5

        END

        +

        /* Contract */

        CASE

            WHEN Contract = 'Two year' THEN 30
            WHEN Contract = 'One year' THEN 20
            ELSE 10

        END

        +

        /* Monthly Charges */

        CASE

            WHEN MonthlyCharges >= 90 THEN 20
            WHEN MonthlyCharges >= 60 THEN 15
            ELSE 10

        END

        +

        /* Churn */

        CASE

            WHEN Churn = 'No' THEN 20
            ELSE 0

        END

    ) AS health_score,

    /* =========================================
       CUSTOMER LIFETIME VALUE
    ========================================= */

    ROUND((MonthlyCharges * tenure)::numeric,2) AS customer_lifetime_value

    FROM customer_churn_master

),

dashboard_base AS
(

SELECT

    *,

    /* =========================================
       RISK CATEGORY
    ========================================= */

    CASE

        WHEN health_score >= 80

        THEN 'Low Risk'

        WHEN health_score >= 50

        THEN 'Medium Risk'

        ELSE 'High Risk'

    END AS risk_category

FROM customer_scores

)

SELECT

    *,

    /* =========================================
       RETENTION PRIORITY
    ========================================= */

    CASE

        WHEN risk_category = 'High Risk'
             AND customer_lifetime_value >= 3000

        THEN 'Critical'

        WHEN risk_category = 'High Risk'

        THEN 'High'

        WHEN risk_category = 'Medium Risk'

        THEN 'Medium'

        ELSE 'Low'

    END AS retention_priority

FROM dashboard_base;