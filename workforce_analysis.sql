-- Workforce Planning & SLA Risk Analysis
-- Database table: workforce_planning_daily

-- 1. View full dataset
SELECT *
FROM workforce_planning_daily;

-- 2. Peak backlog
SELECT 
    MAX(opening_backlog) AS peak_backlog
FROM workforce_planning_daily;

-- 3. Maximum daily capacity gap
SELECT 
    MAX(incoming_claims - daily_capacity) AS max_capacity_gap
FROM workforce_planning_daily;

-- 4. Demand vs capacity trend
SELECT 
    date,
    incoming_claims,
    daily_capacity,
    (incoming_claims - daily_capacity) AS capacity_gap
FROM workforce_planning_daily
ORDER BY date;

-- 5. Backlog danger status
SELECT 
    date,
    opening_backlog,
    CASE 
        WHEN opening_backlog >= 150 THEN 'Danger'
        ELSE 'Normal'
    END AS backlog_status
FROM workforce_planning_daily
ORDER BY date;

-- 6. Daily hiring need signal
SELECT
    date,
    incoming_claims,
    daily_capacity,
    opening_backlog,
    (incoming_claims - daily_capacity) AS capacity_gap,
    CASE
        WHEN (incoming_claims - daily_capacity) > 0 
             OR opening_backlog >= 150
        THEN 'Hiring action needed'
        ELSE 'Monitor'
    END AS hiring_recommendation
FROM workforce_planning_daily
ORDER BY date;

-- 7. Monthly workload summary
SELECT
    month,
    SUM(incoming_claims) AS total_claims,
    SUM(daily_capacity) AS total_capacity,
    SUM(incoming_claims - daily_capacity) AS total_capacity_gap,
    MAX(opening_backlog) AS peak_monthly_backlog
FROM workforce_planning_daily
GROUP BY month
ORDER BY MIN(date);
