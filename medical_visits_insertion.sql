--Medical_Visits
INSERT INTO Appointments (patient_id, doctor_id, appointment_date, status)
SELECT 
    FLOOR(RANDOM() * 100) + 1,  -- Random patient_id (assuming 100 patients exist)
    FLOOR(RANDOM() * 50) + 1,   -- Random doctor_id (assuming 50 doctors exist)
    CURRENT_DATE + INTERVAL '1 day' * FLOOR(RANDOM() * 30),  -- Random future appointment date
    CASE 
        WHEN RANDOM() > 0.8 THEN 'Cancelled'
        WHEN RANDOM() > 0.5 THEN 'Completed'
        ELSE 'Scheduled'
    END
FROM generate_series(1,100) AS gs(num);
