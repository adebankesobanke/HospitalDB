--Billings Table
CREATE TABLE Billings (
    billing_id SERIAL PRIMARY KEY,
    patient_id INT NOT NULL,
    total_amount DECIMAL(10,2) NOT NULL,
    payment_status BOOLEAN DEFAULT FALSE,
    payment_method VARCHAR(50),
    billing_date DATE DEFAULT CURRENT_DATE NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
