
--Treatments Table

CREATE TABLE Treatments (
    treatment_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    treatment_type VARCHAR(255) NOT NULL,
    treatment_date DATE DEFAULT CURRENT_DATE NOT NULL,
    duration INTERVAL NOT NULL,
    cost DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);



