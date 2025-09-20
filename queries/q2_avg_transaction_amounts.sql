SELECT 
	case when fraudulent = 1 then 'Fraudulent' else 'Non-Fraudulent' end as fraud_status,
    round(AVG(transaction_amount), 4) AS avg_amount,
    COUNT(*) AS num_transactions
FROM fraud_detection
GROUP BY fraudulent;
