-- Billings Table
INSERT INTO Billings (patient_id, total_amount, payment_status, payment_method, billing_date)
SELECT 
    FLOOR(RANDOM() * 100) + 1,  -- Random patient_id (assuming 100 patients exist)
    ROUND(RANDOM() * 5000 + 500),  -- Random total amount between $500 and $5500
    CASE 
        WHEN RANDOM() > 0.7 THEN TRUE  -- Paid
        ELSE FALSE  -- Unpaid
    END, 
    CASE 
        WHEN RANDOM() > 0.7 THEN 'Credit Card'
        WHEN RANDOM() > 0.5 THEN 'Cash'
        WHEN RANDOM() > 0.3 THEN 'Bank Transfer'
        ELSE 'Insurance'
    END, 
    CURRENT_DATE - INTERVAL '1 day' * FLOOR(RANDOM() * 30)  -- Random billing date within the last 30 days
FROM generate_series(1,100) AS gs(num);

