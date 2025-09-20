SELECT
    Time_of_Transaction AS hour,
    COUNT(*) AS total_transactions,
    SUM(Fraudulent) AS fraudulent_transactions,
    ROUND(
        100.0 * SUM(Fraudulent) / COUNT(*),
        2
    ) AS fraud_rate_percent
FROM
    fraud_detection
GROUP BY
    Time_of_Transaction
ORDER BY
    hour;
