# HospitalDB
# 🏥 Hospital Database Project

This SQL project simulates a basic hospital management system. It demonstrates essential relational database skills including schema design, data population, and querying for insights, and is split into two phases as follows:
Phase 1: Schema design and core queries
Phase 2: Advanced database design, ETL pipeline simulation, automation and optimization

Phase 1: Schema Design and Core Queries

## 📌 Project Objectives

- Design a normalized relational database for hospital operations
- Create and manage core tables like Patients, Appointments, Doctors, and Treatments
- Extend functionality with Medications, Diagnoses, Medical Visits, and Billing
- Populate tables with sample data using SQL scripts and CSV files
- Perform analytical queries for real-world healthcare scenarios

## 🗂️ Project Structure
Hospital_DB/
├── schema/
│   ├── patients_table.sql
│   ├── doctors_table.sql
│   ├── appointments_table.sql
│   ├── treatments_table.sql
│   ├── medications_table.sql
│   ├── diagnoses_table.sql
│   ├── medical_visits_table.sql
│   ├── billings_table.sql
│   ├── branches_table.sql
│
├── inserts/
│   ├── patients_insertion.sql
│   ├── doctors_insertion.sql
│   ├── appointments_insertion.sql
│   ├── treatments_insertion.sql
│   ├── medications_insertion.sql
│   ├── diagnoses_insertion.sql
│   ├── medical_visits_insertion.sql
│   ├── billings_insertion.sql
│   ├── branches_insertion.sql
│
├── views/
│   ├── active_doctors_view.sql          # View showing doctors with current appointments
│
├── materialized_views/
│   ├── branch_revenue_summary.sql       # Materialized view for total revenue per branch
│
├── enhancements/
│   ├── add_birthdate_to_patients.sql    # ALTER TABLE script to add birth_date column
│   ├── calculate_patient_age.sql        # Query to calculate patient ages
│   ├── realistic_admission_dates.sql    # Update script for realistic admission dates
│
├── data/
│   ├── patients_data.csv
│   ├── doctors_data.csv
│   ├── appointments_data.csv
│   ├── treatments_data.csv
│   ├── medications_data.csv
│   ├── diagnoses_data.csv
│   ├── medical_visits_data.csv
│   ├── billings_data.csv
│   ├── branches_data.csv
│
├── ETL/
│   ├── daily_appointments_etl.sql       # Example ETL pipeline script for appointments
│   ├── branch_revenue_etl.sql           # ETL for branch revenue aggregation
│
├── README.md


##**Database Enhancement and Business Value**
Database Enhancement: Added views for active doctors, materialized views for branch revenue, age calculations for patients and realistic admission dates
Business Value: Supports rapid operational reporting, ensures data integrity for decision making, and enables analytics on patients demographics and branch revenue performance.

## 🧠 SQL Skills Demonstrated

1. Database Design & Modeling  
   - Normalized entities into separate tables  
   - Defined `PRIMARY KEY` and `FOREIGN KEY` relationships

2. Data Definition Language (DDL)
   - Created schemas with `CREATE TABLE`  
   - Used constraints (`NOT NULL`, `DEFAULT`, `CHECK`)

3. Data Manipulation Language (DML)
   - Inserted records with `INSERT INTO` scripts  
   - Updated and deleted data as needed

4. Filtering & Querying Data
   - Used `SELECT`, `WHERE`, `ORDER BY`, `BETWEEN`, etc.

5. Joins
   - Combined data across related tables with `LEFT JOIN`

6. Aggregations & Grouping
   - Used `COUNT`, `SUM`, `AVG`, `GROUP BY`, and `HAVING`

7. Subqueries 
   - Used nested `SELECT` for filtering and analytics

8. Data Integrity & Constraints 
   - Enforced valid data using relational constraints


## ⚙️ Tools Used
- PostgreSQL / MySQL
- Git & GitHub (version control)
- GitHub Desktop

## 🚀 Future Enhancements
 Future Enhancements
Add ER Diagram (Entity-Relationship Model):
Visualize table relationships to aid database understanding and presentation.

Automate Inserts with Stored Procedures:
Create stored procedures for routine data insertions and updates to improve efficiency and maintainability.

Create Reusable Views for Reporting:
Design SQL views for common queries such as appointment summaries, billing reports, and treatment statistics for quick retrieval and reporting.

Implement Advanced Queries and Window Functions:
Further analyze patient data trends and treatment outcomes using ranking, partitioning, and analytical functions.

Build Stored Functions and Triggers:
Automate data validation and update cascades to maintain database integrity.

Integrate with a Python Dashboard for Visualization:
Use Streamlit or Dash to build interactive dashboards showing patient counts, appointment trends, doctor performance, and billing summaries.

Develop a REST API Layer:
Connect the database to frontend applications or external systems through a secure API built with Flask or FastAPI.

Deploy on Cloud Database Platforms:
Practice deploying the database on cloud providers (AWS RDS, Azure SQL) for scalability and production-readiness.


## 👤 Author

**Adebanke Sobanke**  
[GitHub Profile](https://github.com/adebankesobanke)


