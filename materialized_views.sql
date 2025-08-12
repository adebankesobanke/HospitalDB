-- ==============================================
-- Materialized Views for HospitalDB
-- Purpose: Cache aggregated revenue summaries for faster reporting
-- Author: Adebanke Sobanke
-- Phase: 2 – Advanced Database Design & ETL Simulation
-- ==============================================

-- 1️⃣ Drop existing materialized view if it exists (safety step for reruns)
DROP MATERIALIZED VIEW IF EXISTS branch_revenue_summary;

-- 2️⃣ Create the materialized view
CREATE MATERIALIZED VIEW branch_revenue_summary AS
SELECT
    b.branch_id,
    b.branch_name,
    DATE_TRUNC('month', i.invoice_date) AS month,
    SUM(i.amount) AS total_revenue
FROM invoices i
JOIN branches b ON i.branch_id = b.branch_id
GROUP BY b.branch_id, b.branch_name, DATE_TRUNC('month', i.invoice_date);

-- 3️⃣ Create an index to speed up lookups on branch_id and month
CREATE INDEX idx_branch_revenue_summary_branch_month
ON branch_revenue_summary (branch_id, month);

-- 4️⃣ Optional: Refresh the materialized view manually
-- (In production, this can be scheduled via cron job or pgAgent)
-- REFRESH MATERIALIZED VIEW branch_revenue_summary;

