-- Diagnoses Table
INSERT INTO Diagnoses (patient_id, doctor_id, diagnosis_date, diagnosis)
SELECT 
    FLOOR(RANDOM() * 100) + 1,  -- Random patient_id (assuming 100 patients exist)
    FLOOR(RANDOM() * 50) + 1,   -- Random doctor_id (assuming 50 doctors exist)
    CURRENT_DATE - INTERVAL '1 day' * FLOOR(RANDOM() * 365),  -- Random past diagnosis date within the last year
    CASE 
        WHEN RANDOM() > 0.7 THEN 'Hypertension'
        WHEN RANDOM() > 0.5 THEN 'Diabetes'
        WHEN RANDOM() > 0.3 THEN 'Respiratory Infection'
        ELSE 'General Checkup'
    END
FROM generate_series(1,100) AS gs(num);
SELECT * FROM Diagnoses ORDER BY Diagnoses DESC LIMIT 10;


