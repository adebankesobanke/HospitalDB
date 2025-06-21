-- Diagnoses Table
CREATE TABLE Diagnoses (
    diagnosis_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    diagnosis_date DATE DEFAULT CURRENT_DATE NOT NULL,
    diagnosis TEXT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);
