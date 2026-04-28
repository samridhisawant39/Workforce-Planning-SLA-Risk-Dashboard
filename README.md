Workforce Planning & SLA Risk Dashboard
Overview
This project analyses operational workload and workforce capacity to identify when service demand exceeds processing capability, leading to backlog growth, SLA breaches, and the need for hiring intervention.
The goal was to simulate a real-world operations environment (e.g., claims processing, support teams) and build a decision-support dashboard to enable proactive workforce planning.
Business Problem
Operations teams often react after service performance has already deteriorated.
Key challenges:
Demand fluctuates daily
Workforce capacity is relatively fixed
Hiring decisions take weeks
SLA breaches occur when backlog accumulates
This project addresses:
When demand starts exceeding capacity
When backlog becomes operationally dangerous
When SLA performance is at risk
When staffing action is required
Dataset
A structured dataset was created to simulate daily operational activity including:
Date
Incoming workload (claims)
Processing capacity
Backlog levels
SLA target vs actual performance
Capacity gap (shortfall/surplus)
Hiring recommendation signals
Tools & Techniques
SQL (MySQL) → Data preparation, calculations, metrics
Tableau → Dashboard visualisation
Excel/CSV → Data handling
Key Insights
Peak backlog reached 564 claims, indicating severe operational pressure
Maximum daily capacity shortfall reached 30 claims, showing consistent under-capacity periods
37 days were identified as SLA risk days
37 days required hiring or staffing intervention
Approximately 20% of the analysed period showed operational risk signals
Dashboard Components
Demand vs Capacity trend analysis
Backlog growth with danger threshold
Capacity shortfall (hiring signal)
SLA risk monitoring
Daily operational detail table
Business Value
This dashboard enables proactive decision-making instead of reactive management by:
Identifying overload before backlog becomes critical
Highlighting sustained capacity shortages
Detecting early SLA risk patterns
Supporting timely hiring or resource allocation decisions
Files Included
SQL queries (.sql)
Dataset (.csv)
Tableau packaged dashboard (.twbx)
Dashboard export (.pdf)
Dashboard images (.png)
Project Outcome
This project demonstrates the ability to:
Translate business problems into analytical frameworks
Use SQL to generate meaningful operational metrics
Build decision-focused dashboards
Communicate insights in a business-relevant way
