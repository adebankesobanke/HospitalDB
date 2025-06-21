--Medical_Visits Table
CREATE TABLE Medical_Visits (
    visit_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    visit_date DATE DEFAULT CURRENT_DATE NOT NULL,
    reason TEXT NOT NULL,
    doctor_id INT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

