-- Treatments Table
INSERT INTO Treatments (patient_id, doctor_id, treatment_type, treatment_date, duration, cost)
SELECT 
    FLOOR(RANDOM() * 100) + 1,  -- Random patient_id (assuming 100 patients exist)
    FLOOR(RANDOM() * 50) + 1,   -- Random doctor_id (assuming 50 doctors exist)
    CASE 
        WHEN RANDOM() > 0.7 THEN 'Physical Therapy'
        WHEN RANDOM() > 0.5 THEN 'Surgery'
        WHEN RANDOM() > 0.3 THEN 'Medication Therapy'
        ELSE 'General Consultation'
    END, 
    CURRENT_DATE - INTERVAL '1 day' * FLOOR(RANDOM() * 365),  -- Random past treatment date within the last year
    MAKE_INTERVAL(months => CAST(FLOOR(RANDOM() * 6) AS INT)),  -- Generates random duration between 1 to 6 months
    ROUND(RANDOM() * 5000 + 500)  -- Rounds cost without specifying decimal places
FROM generate_series(1,100) AS gs(num);
