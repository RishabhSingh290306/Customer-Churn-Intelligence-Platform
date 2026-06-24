SELECT
    customerID,
    TotalCharges,

    ROW_NUMBER() OVER(
        ORDER BY TotalCharges DESC
    ) AS customer_rank

FROM customer_churn_master;


WITH ranked_customers AS
(
    SELECT
        customerID,
        TotalCharges,

        ROW_NUMBER() OVER(
            ORDER BY TotalCharges DESC
        ) AS customer_rank

    FROM customer_churn_master
)

SELECT *
FROM ranked_customers
WHERE customer_rank <= 10;