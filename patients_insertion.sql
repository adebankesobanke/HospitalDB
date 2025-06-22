--Patients
INSERT INTO Patients (first_name, last_name, dob, gender, phone, address, insurance_info)
SELECT 
    'Patient_' || gs.num, 
    'Last_' || gs.num, 
    (CURRENT_DATE - INTERVAL '1 year' * FLOOR(RANDOM() * 80)), 
    CASE WHEN RANDOM() > 0.5 THEN 'Male' ELSE 'Female' END, 
    '080' || FLOOR(RANDOM() * 10000000), 
    'Address_' || gs.num, 
    CASE WHEN RANDOM() > 0.5 THEN 'Insurance_' || gs.num ELSE NULL END
FROM generate_series(1,100) AS gs(num);
