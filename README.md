# Workforce Planning & SLA Risk Dashboard

## Overview
This project analyses operational workload and workforce capacity to identify when service demand exceeds processing capability, leading to backlog growth, SLA risk, and hiring intervention needs.

The dashboard was built as a portfolio project to simulate a real-world operations environment such as claims processing, customer support, or service delivery teams.

## Business Problem
Operations teams often react after service performance has already declined. This project focuses on identifying early warning signs before backlog and SLA issues become severe.

The project answers four key questions:

- Is demand outpacing processing capacity?
- When does backlog become dangerous?
- When is SLA performance at risk?
- When is urgent hiring or staffing intervention needed?

## Tools Used
- SQL / MySQL
- Tableau
- CSV / Excel

## Dataset
The dataset simulates daily operational activity including:

- Date
- Incoming claims / daily workload
- Processing capacity
- Backlog
- Capacity gap
- SLA risk
- Hiring recommendation

## Key Results
- Peak backlog reached **564 claims**
- Maximum capacity gap reached **30 claims**
- **37 days** were identified as SLA risk days
- **37 days** required urgent hiring or staffing attention
- Around **20% of the analysis period** showed operational risk signals

## Dashboard Views
The Tableau dashboard includes:

- Demand vs Capacity Over Time
- Backlog Trend Over Time
- Hiring Need / Capacity Gap
- SLA Risk Over Time
- Daily Operations Detail Table

## Business Impact
This dashboard helps managers move from reactive decision-making to proactive workforce planning.

It supports:

- Early identification of capacity shortages
- Backlog monitoring against a danger threshold
- SLA risk detection
- Better timing of hiring or temporary staffing decisions

## Files Included
- `data/workforce_planning_daily.csv` – dataset
- `sql/workforce_analysis.sql` – SQL queries
- `images/dashboard_overview.png` – dashboard screenshot

## Project Outcome
This project demonstrates the ability to:

- Translate an operational business problem into measurable KPIs
- Use SQL to prepare and analyse data
- Build a Tableau dashboard for decision support
- Communicate insights clearly for business users
