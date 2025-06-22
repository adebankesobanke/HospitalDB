--Doctors
INSERT INTO Doctors (first_name, last_name, specialty, phone, email)
SELECT 
    'Doctor_' || gs.num, 
    'Last_' || gs.num, 
    CASE 
        WHEN RANDOM() > 0.7 THEN 'Cardiology'
        WHEN RANDOM() > 0.5 THEN 'Neurology'
        WHEN RANDOM() > 0.3 THEN 'Orthopedics'
        ELSE 'General Medicine'
    END, 
    '080' || FLOOR(RANDOM() * 10000000), 
    'doctor_' || gs.num || '@hospital.com'
FROM generate_series(1,100) AS gs(num);
