-- Workforce Planning Analysis

-- View data
SELECT * FROM workforce_planning_daily;

-- Peak backlog
SELECT MAX(backlog) AS peak_backlog
FROM workforce_planning_daily;

-- Max capacity gap
SELECT MAX(capacity_gap) AS max_capacity_gap
FROM workforce_planning_daily;

-- Days at SLA risk
SELECT COUNT(*) AS sla_risk_days
FROM workforce_planning_daily
WHERE sla_risk = 'Yes';

-- Hiring required days
SELECT COUNT(*) AS hiring_days
FROM workforce_planning_daily
WHERE hiring_recommendation LIKE '%hire%';
