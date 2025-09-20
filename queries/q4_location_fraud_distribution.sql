SELECT 
    location, 
    COUNT(*) AS total_transactions, 
    COUNT(*) FILTER (WHERE fraudulent = 1) AS fraud_count, 
    ROUND(COUNT(*) FILTER (WHERE fraudulent = 1) * 100.0 / COUNT(*), 2) AS fraud_rate_pct
FROM fraud_detection
GROUP BY location
ORDER BY fraud_rate_pct DESC;
