SELECT 
    transaction_type,
    COUNT(*) FILTER (WHERE fraudulent = 1) AS fraud_count,
    COUNT(*) AS total_transactions,
    ROUND(
        COUNT(*) FILTER (WHERE fraudulent = 1) * 100.0 / COUNT(*), 
        2
    ) AS fraud_rate_pct
FROM fraud_detection
GROUP BY transaction_type
ORDER BY fraud_rate_pct DESC;
