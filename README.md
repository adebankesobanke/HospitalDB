# HospitalDB
# 🏥 Hospital Database Project

This SQL project simulates a basic hospital management system. It demonstrates essential relational database skills including schema design, data population, and querying for insights.

## 📌 Project Objectives

- Design a normalized relational database for hospital operations
- Create and manage core tables like Patients, Appointments, Doctors, and Treatments
- Extend functionality with Medications, Diagnoses, Medical Visits, and Billing
- Populate tables with sample data using SQL scripts and CSV files
- Perform analytical queries for real-world healthcare scenarios

## 🗂️ Project Structure
Hospital_DB/
├── schema/
│ ├── appointment_table.sql
│ ├── patients_table.sql
│ ├── doctors_table.sql
│ ├── treatments_table.sql
│ ├── diagnoses_table.sql
│ ├── medications_table.sql
│ ├── medical_visits_table.sql
│ └── billings_table.sql
│
├── inserts/
│ ├── appointment_insertion.sql
│ ├── patients_insertion.sql
│ ├── doctors_insertion.sql
│ ├── treatments_insertion.sql
│ ├── diagnoses_insertion.sql
│ ├── medications_insertion.sql
│ ├── medical_visits_insertion.sql
│ └── billings_insertion.sql
│
├── data/
│ ├── appointments_data.csv
│ ├── patients_data.csv
│ ├── doctors_data.csv
│ ├── treatments_data.csv
│ ├── diagnoses_data.csv
│ ├── medications_data.csv
│ ├── medical_visits_data.csv
│ └── billings_data.csv
├── README.md

## 🧠 SQL Skills Demonstrated

1. **Database Design & Modeling**  
   - Normalized entities into separate tables  
   - Defined `PRIMARY KEY` and `FOREIGN KEY` relationships

2. **Data Definition Language (DDL)**  
   - Created schemas with `CREATE TABLE`  
   - Used constraints (`NOT NULL`, `DEFAULT`, `CHECK`)

3. **Data Manipulation Language (DML)**
   - Inserted records with `INSERT INTO` scripts  
   - Updated and deleted data as needed

4. **Filtering & Querying Data**  
   - Used `SELECT`, `WHERE`, `ORDER BY`, `BETWEEN`, etc.

5. **Joins**  
   - Combined data across related tables with `LEFT JOIN`

6. **Aggregations & Grouping**  
   - Used `COUNT`, `SUM`, `AVG`, `GROUP BY`, and `HAVING`

7. **Subqueries** 
   - Used nested `SELECT` for filtering and analytics

8. **Data Integrity & Constraints**  
   - Enforced valid data using relational constraints


## ⚙️ Tools Used
- PostgreSQL / MySQL
- Git & GitHub (version control)
- GitHub Desktop

## 🚀 Future Enhancements

- Add ER diagram (entity-relationship model)
- Automate inserts with stored procedures
- Create reusable views for reporting
- Integrate with Python dashboard for visualization

---

## 👤 Author

**Adebanke Sobanke**  
[GitHub Profile](https://github.com/adebankesobanke)


