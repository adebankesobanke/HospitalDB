-- Medications Table

INSERT INTO Medication (patient_id, doctor_id, medication_name, dosage, start_date, end_date)
SELECT 
    FLOOR(RANDOM() * 100) + 1,  -- Random patient_id (assuming 100 patients exist)
    FLOOR(RANDOM() * 50) + 1,   -- Random doctor_id (assuming 50 doctors exist)
    CASE 
        WHEN RANDOM() > 0.7 THEN 'Amoxicillin'
        WHEN RANDOM() > 0.5 THEN 'Ibuprofen'
        WHEN RANDOM() > 0.3 THEN 'Metformin'
        ELSE 'Paracetamol'
    END, 
    CASE 
        WHEN RANDOM() > 0.7 THEN '500mg'
        WHEN RANDOM() > 0.5 THEN '250mg'
        WHEN RANDOM() > 0.3 THEN '100mg'
        ELSE '50mg'
    END, 
    CURRENT_DATE - INTERVAL '1 day' * FLOOR(RANDOM() * 30),  -- Random start date within the last 30 days
    CURRENT_DATE + INTERVAL '1 day' * FLOOR(RANDOM() * 30)  -- Random end date within the next 30 days
FROM generate_series(1,100) AS gs(num);

