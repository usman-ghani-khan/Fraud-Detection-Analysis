SELECT
    SUM(Transaction_Amount) AS total_transaction_amount,
    SUM(Transaction_Amount * Fraudulent) AS total_fraud_amount,
    ROUND(
        100.0 * SUM(Transaction_Amount * Fraudulent) / SUM(Transaction_Amount),
        2
    ) AS fraud_percentage_of_total
FROM
    fraud_detection;
