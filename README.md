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

# 🏥 HospitalDB: Relational Database & Advanced ETL Simulation Project

A comprehensive, two-phase portfolio project simulating a Hospital Management System. This project showcases relational database design, SQL querying, data automation using stored procedures, and simulated ETL pipelines using Airflow-style logic.

## 📌 Project Objectives

This project demonstrates progression from core database design to advanced SQL techniques and data engineering workflows—ideal for roles in data engineering, analytics, and technical product/data management.

---

### 🔹 Phase 1: Core Hospital Database Design

**Goal:** Build a normalized PostgreSQL database with core hospital entities and sample data.

**Objectives:**
- Design normalized tables for:
  - `Doctors`
  - `Patients`
  - `Appointments`
  - `Billings`
  - `Branches`
- Implement primary and foreign key constraints.
- Populate tables with sample data using SQL insert scripts.
- Write exploratory SQL queries for:
  - Hospital revenue tracking
  - Appointment completion rates
  - Branch performance insights
- Demonstrate SQL proficiency and schema modeling.

---

### 🔹 Phase 2: Advanced Database Design & ETL Simulation

**Goal:** Extend the core system to include advanced database logic and simulate data pipelines for daily automation.

**Objectives:**
- Create `MATERIALIZED VIEWS` to cache branch-level revenue summaries.
- Write `STORED PROCEDURES` using PL/pgSQL to automate:
  - Daily billing inserts
  - Summary table updates
- Schedule ETL tasks using simulated **Airflow DAG logic**.
- Implement **UPSERT logic** for idempotent inserts.
- Add **INDEXES** and **PARTITIONING** for performance optimization.
- Track pipeline execution with logging and timestamps.
- *(Optional)* Build a dashboard in Power BI or Tableau with direct database connection and auto-refresh.

---

## 📂 Project Structure

HospitalDB-Portfolio/
│
├── 📁 phase1_core_design/
│   ├── create_tables.sql
│   ├── insert_sample_data.sql
│   ├── exploratory_queries.sql
│   └── erd_diagram.png
│
├── 📁 phase2_advanced_etl/
│   ├── materialized_views.sql
│   ├── stored_procedures.sql
│   ├── airflow_dag_simulation.py
│   ├── index_partition_strategy.sql
│   └── etl_logging_strategy.sql
│
├── 📁 dashboard_visuals/         # (optional)
│   ├── hospital_dashboard.pbix   # Power BI
│   └── top_insights.png
│
├── README.md
└── requirements.txt              # Optional for Python or Airflow components



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


## 👤 Author

**Adebanke Sobanke**  
[GitHub Profile](https://github.com/adebankesobanke)


