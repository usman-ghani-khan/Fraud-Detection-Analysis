SELECT 
    CASE 
        WHEN Previous_Fraudulent_Transactions = 0 THEN '0'
        WHEN Previous_Fraudulent_Transactions BETWEEN 1 AND 2 THEN '1-2'
        ELSE '3+'
    END AS fraud_history_bucket,
    round(AVG(Fraudulent), 3) AS current_fraud_rate,
    COUNT(*) AS num_transactions
FROM fraud_detection
GROUP BY fraud_history_bucket
ORDER BY fraud_history_bucket;
