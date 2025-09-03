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

  # 🏥 HospitalDB Project — Phase 2: Advanced Data Engineering & Analytics

## Overview
Phase 2 of the HospitalDB project expands upon the core relational design established in Phase 1. This phase introduces advanced database engineering techniques to simulate real-world healthcare data operations at scale. The focus is on performance optimization, analytics readiness, and ETL pipeline simulation using PostgreSQL.

## Objectives
- Enhance query performance for large-scale data operations
- Design analytics-friendly schemas for healthcare insights
- Simulate real-world ETL workflows and data transformations
- Enable scalable, maintainable, and audit-ready data architecture

## Key Enhancements

### ⚙️ Performance Optimization
- **Indexing**: Strategic B-tree and GIN indexes on high-traffic columns
- **Partitioning**: Time-based and branch-based partitioning for large tables
- **Materialized Views**: Precomputed views for heavy aggregations (e.g., monthly revenue)
- **Query Refactoring**: Use of CTEs and window functions for efficient analytics

### 📊 Analytics-Ready Schema
- **Star Schema Design**: Fact tables (`fact_appointments`, `fact_billing`) and dimension tables (`dim_patient`, `dim_doctor`, `dim_branch`)
- **Surrogate Keys**: Simplified joins and improved performance
- **Date Dimension**: Enables time-series analysis and seasonal insights

### 🔄 ETL Pipeline Simulation
- **Staging Tables**: Raw data ingestion from external sources
- **Stored Procedures**: Automated data transformation using PL/pgSQL
- **Audit Columns**: `created_at`, `updated_at`, `source_system` for data lineage
- **Error Logging**: Capture and track anomalies during data loads

### 🧠 Advanced SQL Techniques
- **Window Functions**: Patient visit trends, doctor performance metrics
- **Recursive Queries**: Hierarchical modeling (e.g., referral chains)
- **JSON/JSONB Columns**: Semi-structured data for feedback and notes

## 📁 Repository Structure
HospitalDB/ ├── Scripts_Phase1/ # Core schema and sample data ├── Scripts_Phase2/ # Optimization, ETL, and analytics scripts ├── Data/ # Sample CSVs and staging data ├── Views/ # Materialized views and reporting queries ├── Procedures/ # Stored procedures for ETL simulation └── README.md # Project documentation



## 👤 Author

**Adebanke Sobanke**  
[GitHub Profile](https://github.com/adebankesobanke)


