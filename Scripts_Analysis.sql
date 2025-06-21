--Table Exploration

--1.Patients Table
--View all Patient Records
select * from Patients limit 10;

--Check data distribution
--a. Count patients by gender
select  gender, count (*) as gender_count 
from Patients
group by gender;

--b. Count patients by age group

select
   case 
       when extract(YEAR FROM AGE(dob)) < 18 THEN 'Child'
        WHEN EXTRACT(YEAR FROM AGE(dob)) BETWEEN 18 AND 40 THEN 'Young Adult'
        WHEN EXTRACT(YEAR FROM AGE(dob)) BETWEEN 41 AND 65 THEN 'Middle-Aged'
        ELSE 'Senior'
    END AS age_group,
    COUNT(*) AS total_patients
FROM Patients
GROUP BY age_group;

--c.Detect Duplicate Patients by name
select first_name, last_name, count(*) as duplicate_count
from Patients
group by first_name, last_name
having count(*)>1;

--Explore relationships with other tables
--d.Show patients with medical visits
SELECT p.patient_id, p.first_name, p.last_name, COUNT(mv.visit_id) AS total_visits
FROM Patients p
LEFT JOIN Medical_Visits mv ON p.patient_id = mv.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name
ORDER BY total_visits DESC LIMIT 10;

--e.Show patients with active medications
SELECT p.patient_id, p.first_name, p.last_name, COUNT(m.medication_id) AS total_medications
FROM Patients p
LEFT JOIN Medication m ON p.patient_id = m.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name
ORDER BY total_medications DESC LIMIT 10;

--2. Appointment Table
--a.View appointment data
SELECT * FROM Appointments LIMIT 10;

--b. Analyze visit frequency
SELECT patient_id, COUNT(*) AS total_visits
FROM Medical_Visits
GROUP BY patient_id
ORDER BY total_visits DESC LIMIT 10;

--c. Find patients with recent visits
SELECT * FROM Medical_Visits 
WHERE visit_date >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY visit_date DESC LIMIT 10;

--d.Analyze appointment statuses
select status, count (*) as total_appointments 
from Appointments
group by status
order by total_appointments;

--e. Identify the most active doctors
SELECT * FROM Doctors LIMIT 10;
select d.doctor_id, d.first_name, d.last_name, count(status) as most_active_doctors
from Appointments a
left join Doctors d
on a.doctor_id = d.doctor_id
group by d.doctor_id, d.first_name, d.last_name
order by most_active_doctors desc
limit 10;

--f. Find patients with the most appointments
select * from Patients;
select p.patient_id, p.first_name,p.last_name, count(appointment_id) as appointment_count
from Appointments a
left join Patients p
on a.patient_id = p.patient_id
group by p.patient_id, p.first_name,p.last_name
order by appointment_count desc
limit 10;

--g. Check upcoming appointments
select * from Appointments
where appointment_date >=current_date
order by appointment_date asc
limit 10;

--3. Medical_Visits
--a. View medical visits data
select * from Medical_Visits limit 10;

--b. What is the most frequent reason for visit?
select reason, count(*) as visit_count from Medical_Visits
group by reason
order by visit_count desc
limit 1;

--c. Show patients that visited more than once.
select patient_id,count(*) as total_visits
from Medical_Visits
group by patient_id
having count(*)>1
order by total_visits desc;

--d.show names of patients with repeat visits
SELECT p.first_name, p.last_name, mv.patient_id, COUNT(mv.visit_id) AS total_visits
FROM Medical_Visits mv
JOIN Patients p ON mv.patient_id = p.patient_id
GROUP BY mv.patient_id, p.first_name, p.last_name
HAVING COUNT(mv.visit_id) > 1
ORDER BY total_visits DESC;

--4.Diagnoses Table
--a.View diagnoses
SELECT * FROM Diagnoses LIMIT 10;

--b.Analyze diagnosis frequency
SELECT diagnosis, COUNT(*) AS total_cases
FROM Diagnoses
GROUP BY diagnosis
ORDER BY total_cases DESC LIMIT 10;

--c. show the cases of diabetes
SELECT diagnosis, COUNT(*) AS total_cases
FROM Diagnoses
GROUP BY diagnosis
having diagnosis='Diabetes'
ORDER BY total_cases DESC LIMIT 10;

--d.Identify doctors handling the most diagnoses
select * from Doctors;
select * from Diagnoses;
select d.doctor_id,d.first_name,d.last_name,count(diagnosis_id) as diagnosis_count
from Diagnoses dg
left join Doctors d
on dg.doctor_id = d.doctor_id
group by d.doctor_id,d.first_name,d.last_name
order by diagnosis_count desc
limit 10;

--e.Check recent diagnoses
SELECT * FROM Diagnoses 
WHERE diagnosis_date::timestamp >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY diagnosis_date DESC LIMIT 10;
--the column type for diagnosis_date was updated using the following

ALTER TABLE Diagnoses 
ALTER COLUMN diagnosis_date SET DATA TYPE TIMESTAMP USING diagnosis_date::timestamp;
--Find the most common diagnoses over time
select diagnosis, count(*) as total_cases 
from Diagnoses
group by diagnosis
order by total_cases desc 
limit 10;

--f.Track monthly diagnosis trend
SELECT 
    TO_CHAR(diagnosis_date, 'YYYY-MM') AS month, 
    diagnosis, 
    COUNT(*) AS total_cases
FROM Diagnoses
GROUP BY month, diagnosis
ORDER BY month DESC, total_cases DESC
LIMIT 10;

--g.Compare diagnosis by age group
SELECT 
    CASE 
        WHEN EXTRACT(YEAR FROM AGE(p.dob)) < 18 THEN 'Child'
        WHEN EXTRACT(YEAR FROM AGE(p.dob)) BETWEEN 18 AND 40 THEN 'Young Adult'
        WHEN EXTRACT(YEAR FROM AGE(p.dob)) BETWEEN 41 AND 65 THEN 'Middle-Aged'
        ELSE 'Senior'
    END AS age_group,
    diagnosis,
    COUNT(*) AS total_cases
FROM Diagnoses d
JOIN Patients p ON d.patient_id = p.patient_id
GROUP BY age_group, diagnosis
ORDER BY age_group, total_cases DESC;
--SHow diagnosis in the last 30 days
SELECT * FROM Diagnoses 
WHERE diagnosis_date >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY diagnosis_date DESC
LIMIT 10;

--h.Find the total number of cases by age group
SELECT 
    CASE 
        WHEN EXTRACT(YEAR FROM AGE(p.dob)) < 18 THEN 'Child'
        WHEN EXTRACT(YEAR FROM AGE(p.dob)) BETWEEN 18 AND 40 THEN 'Young Adult'
        WHEN EXTRACT(YEAR FROM AGE(p.dob)) BETWEEN 41 AND 65 THEN 'Middle-Aged'
        ELSE 'Senior'
    END AS age_group,
    COUNT(*) AS total_cases
FROM Diagnoses d
JOIN Patients p ON d.patient_id = p.patient_id
GROUP BY age_group
ORDER BY total_cases DESC;

--5.Treatments Table
--a.View the data
SELECT * FROM Treatments LIMIT 10;

--b. What are the top 10 most common types of treatment provided?
SELECT treatment_type, COUNT(*) AS total_treatments
FROM Treatments
GROUP BY treatment_type
ORDER BY total_treatments DESC LIMIT 10;

--c.Find patients with multiple treatments
select t.patient_id,p.first_name, p.last_name,count (t.treatment_id) as total_treatments
from treatments t
left join patients p
on t.patient_id = p.patient_id
group by p.patient_id, p.first_name, p.last_name
having count(t.treatment_id) > 1
order by multiple_treatments desc
limit 10;

--d.Check recent treatments
SELECT * FROM Treatments 
WHERE treatment_date >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY treatment_date DESC LIMIT 10;
--e.Find average treatment for each treatment type
select treatment_type, round(avg(cost),2) as avg_cost from treatments
group by treatment_type
order by avg_cost desc;

--e.Analyze total cost per patient
select p.patient_id, p.first_name,p.last_name,round(sum(cost),2) as total_cost from treatments t
left join patients p
on t.patient_id = p.patient_id
group by  p.patient_id, p.first_name,p.last_name
order by total_cost desc;

--f.find average treatment duration
SELECT treatment_type, round(AVG(EXTRACT(MONTH FROM duration)),2) AS avg_duration_months
FROM Treatments
GROUP BY treatment_type
ORDER BY avg_duration_months DESC;

--g.Identify patients with the longest treatments
select t.patient_id, p.first_name, p.last_name, sum(extract(month from t.duration)) as treatment_length
from treatments t
left join patients p
on t.patient_id = p.patient_id
group by t.patient_id, p.first_name, p.last_name
order by treatment_length desc
limit 10;

--h.Compare cost and duration by treatment type
SELECT treatment_type, 
       ROUND(AVG(cost), 2) AS avg_cost, 
      round(AVG(EXTRACT(MONTH FROM duration))) AS avg_duration_months
FROM Treatments
GROUP BY treatment_type
ORDER BY avg_cost DESC, avg_duration_months DESC;

--6.Billings Table
--a.view billings table
select * from billings;

--b.Find total revenue
select sum(total_amount) as total_revenue from billings;

--c.Find patients with the highest bills
select b.patient_id, p.first_name,p.last_name, sum(total_amount) as total_cost
from billings b
left join patients p
on b. patient_id = p.patient_id
group by p.patient_id, p.first_name,p.last_name
order by total_cost desc;

--d.Analyze payment status distribution
SELECT payment_status, COUNT(*) AS total_bills
FROM Billings
GROUP BY payment_status;

--e.what is the most common payment method
SELECT payment_method, COUNT(*) AS total_transactions
FROM Billings
GROUP BY payment_method
ORDER BY total_transactions DESC;

--f.check recent billing transactions
SELECT * FROM Billings 
WHERE billing_date >= CURRENT_DATE - INTERVAL '30 days'
ORDER BY billing_date DESC LIMIT 10;

--g.what treatment type gives the highest bills?
select treatment_type, sum(cost) as total_cost
from Treatments
group by treatment_type
order by total_cost desc
limit 10;

--Exploring relationships
--Find all data related to  patient_id 100

SELECT p.patient_id, p.first_name, p.last_name, 
       d.diagnosis, t.treatment_type, b.total_amount AS billing_amount
FROM Patients p
LEFT JOIN Diagnoses d ON p.patient_id = d.patient_id
LEFT JOIN Treatments t ON p.patient_id = t.patient_id
LEFT JOIN Billings b ON p.patient_id = b.patient_id
WHERE p.patient_id = 100; 


--Find patients who have seen multiple doctors
SELECT p.patient_id, p.first_name, p.last_name, COUNT(DISTINCT d.doctor_id) AS total_doctors
FROM Patients p
JOIN Diagnoses d ON p.patient_id = d.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name
HAVING COUNT(DISTINCT d.doctor_id) > 1
ORDER BY total_doctors DESC;


--Find patients with the most medical visits
SELECT p.patient_id, p.first_name, p.last_name, COUNT(mv.visit_id) AS total_visits
FROM Patients p
JOIN Medical_Visits mv ON p.patient_id = mv.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name
ORDER BY total_visits DESC
LIMIT 10;


--Find doctors who treat the most patients
SELECT d.doctor_id, doc.first_name, doc.last_name, COUNT(DISTINCT d.patient_id) AS total_patients
FROM Diagnoses d
JOIN Doctors doc ON d.doctor_id = doc.doctor_id
GROUP BY d.doctor_id, doc.first_name, doc.last_name
ORDER BY total_patients DESC
LIMIT 10;

--Find the top 10 patients by total amount billed
SELECT b.patient_id, p.first_name, p.last_name, ROUND(SUM(b.total_amount), 2) AS total_billed
FROM Billings b
JOIN Patients p ON b.patient_id = p.patient_id
GROUP BY b.patient_id, p.first_name, p.last_name
ORDER BY total_billed DESC
LIMIT 10;

--Calculate the Moving Average for Patient Visit Trends
SELECT visit_date, 
       AVG(total_visits) OVER (ORDER BY visit_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW) AS moving_avg
FROM (
    SELECT visit_date, COUNT(*) AS total_visits
    FROM Medical_Visits
    GROUP BY visit_date
) subquery;

