# PL/SQL Window Functions Analysis: ConsTruck Limited

**Course:** Database Development with PL/SQL  
**Student:** Milliam Kamanzi  
**Student ID:** 27523  
**Assignment:** Individual Assignment I – Window Functions Mastery Project  
**Submission Date:** September 29, 2025  
**Repository:** plsql-window-functions-milliam-kamanzi

---

## Step 1: Problem Definition

**Business Context**  
ConsTruck Limited is a leading Rwandan company specializing in construction equipment rental and maintenance, serving contractors and businesses across Kigali, Rubavu, Huye, and Musanze. The Fleet Operations team oversees equipment allocation, customer rentals, and preventive maintenance to ensure optimal fleet utilization and profitability.

**Data Challenge**  
Management faces challenges in identifying which equipment and customers generate the most value, understanding rental and maintenance trends by region and season, and segmenting customers for targeted offers. Without actionable insights, decisions on fleet expansion, marketing, and maintenance scheduling are often reactive and suboptimal.

**Expected Outcome**  
By leveraging advanced SQL window functions, this project will uncover top-performing equipment and customers, reveal rental and maintenance patterns, and enable customer segmentation for improved marketing and operational efficiency. The analysis will support data-driven decisions to boost profits and customer satisfaction.

---

## Step 2: Success Criteria (5 Measurable Goals)

| Success Criteria                        | Window Function Used | Analysis Type                  | Screenshot File                |
|-----------------------------------------|---------------------|-------------------------------|-------------------------------|
| 1. Identify top 5 equipment per region  | RANK()              | Regional Equipment Rankings    | screenshots/8-topEquipments.png |
| 2. Track monthly rental revenue trends  | SUM() OVER()        | Cumulative Totals Analysis     | screenshots/7-aggregateMonthyRentals.png |
| 3. Analyze month-over-month growth      | LAG(), LEAD()       | Growth Percentage Calculations | screenshots/10-LAG.png, screenshots/11-Lead.png |
| 4. Segment customers into quartiles     | NTILE(4)            | Customer Segmentation          | screenshots/12-NTILE.png |
| 5. Calculate moving average maintenance | AVG() OVER()        | Maintenance Cost Trends        | screenshots/14-averageMaintainance.png |

**Details:**  
- Top equipment per region: Use RANK() to spotlight high-performing assets in each area.
- Monthly rental revenue: Use SUM() OVER() to visualize revenue accumulation and seasonality.
- Growth analysis: Use LAG()/LEAD() to measure rental growth and anticipate future trends.
- Customer quartiles: Use NTILE(4) to group customers for tailored marketing.
- Moving averages: Use AVG() OVER() to smooth maintenance cost fluctuations and plan budgets.

---

## Step 3: Database Schema Design

**Entity Relationship Diagram**

```mermaid
erDiagram
	CUSTOMERS ||--o{ RENTALS : has
	EQUIPMENT ||--o{ RENTALS : rented
	EQUIPMENT ||--o{ MAINTENANCE : maintained

	CUSTOMERS {
		NUMBER customer_id PK
		VARCHAR name
		VARCHAR region
	}
	EQUIPMENT {
		NUMBER equipment_id PK
		VARCHAR name
		VARCHAR category
	}
	RENTALS {
		NUMBER rental_id PK
		NUMBER customer_id FK
		NUMBER equipment_id FK
		DATE rental_date
		NUMBER amount
	}
	MAINTENANCE {
		NUMBER maintenance_id PK
		NUMBER equipment_id FK
		DATE maintenance_date
		NUMBER cost
	}
```

**Table Overview**

| Table      | Purpose                        | Key Columns                                             | Example Row                                  |
|------------|-------------------------------|--------------------------------------------------------|----------------------------------------------|
| customers  | Customer info and region data  | customer_id (PK), name, region                         | 1001, John Doe, Kigali                       |
| equipment  | Equipment catalog              | equipment_id (PK), name, category                      | 2001, Excavator, Earthmoving                 |
| rentals    | Rental transaction records     | rental_id (PK), customer_id (FK), equipment_id (FK), rental_date, amount | 3001, 1001, 2001, 2024-01-15, 250000         |
| maintenance| Maintenance records            | maintenance_id (PK), equipment_id (FK), maintenance_date, cost | 4001, 2001, 2024-01-20, 50000                |

**Screenshots:**  
![Database Schema](screenshots/5-schema.png)

<br>

![Customers](screenshots/1-customers.png)

<br>

![Equipment](screenshots/2-equipment.png)

<br>

![Rentals](screenshots/3-rentals.png)

<br>

![Maintenance](screenshots/4-maintenance.png)

<br>

---

## Step 4: Window Functions Implementation

All window function queries are located in [`window_functions.sql`](./window_functions.sql).

---

### 4.1 Ranking Functions – Regional Equipment Leaders

**Screenshot:**  
![Top Equipments](screenshots/8-topEquipments.png)

**Interpretation:**  
This analysis ranks equipment by rental revenue within each region, helping management identify which assets are most profitable in different locations. The results show clear leaders in each region, guiding fleet allocation and investment decisions. (See Query 7 in `window_functions.sql`)

---

### 4.2 Aggregate Functions – Revenue Trends

**Screenshot:**  
![Aggregate Monthly Rentals](screenshots/7-aggregateMonthyRentals.png)

**Interpretation:**  
This analysis calculates cumulative rental revenue for each equipment over time. The running totals reveal seasonal peaks and periods of growth, allowing management to anticipate demand and optimize inventory. (See Query 8 in `window_functions.sql`)

---

### 4.3 Navigation Functions – Growth Analysis

**Screenshot:**  
![LAG Growth](screenshots/10-LAG.png)

**Interpretation:**  
This analysis compares each equipment’s rental amount to the previous period, showing growth or decline. The results help spot trends and periods of rapid change, supporting proactive business decisions. (See Query 10 in `window_functions.sql`)

---

### 4.4 Distribution Functions – Customer Segmentation

**Screenshot:**  
![Customer Quartiles](screenshots/12-NTILE.png)

**Interpretation:**  
This analysis segments customers into quartiles based on their total spend, supporting targeted marketing and loyalty programs. The results show which customers are most valuable and where to focus retention efforts. (See Query 12 in `window_functions.sql`)

---

### 4.5 Additional Window Functions

**Screenshot:**  
![Average Maintenance](screenshots/14-averageMaintainance.png)

**Interpretation:**  
Calculates the moving average of maintenance costs for each equipment, smoothing out fluctuations and helping plan budgets more effectively. (See Query 14 in `window_functions.sql`)

**Screenshot:**  
![Dense Rank](screenshots/15-denseRank.png)

**Interpretation:**  
Ranks equipment by total revenue, handling ties without skipping ranks. Useful for identifying consistently high-performing assets. (See Query 15 in `window_functions.sql`)

**Screenshot:**  
![Max Rental](screenshots/16-maxRental.png)

**Interpretation:**  
Shows the highest rental amount for each equipment, highlighting peak transactions and potential outliers. (See Query 16 in `window_functions.sql`)

**Screenshot:**  
![Total Maintenance](screenshots/17-totalMaintainanceperEquipement.png)

**Interpretation:**  
Sums maintenance costs for each equipment, supporting cost analysis and budgeting. (See Query 17 in `window_functions.sql`)

**Screenshot:**  
![Rental Count](screenshots/18-countOver.png)

**Interpretation:**  
Counts the number of rentals per customer, revealing frequent renters and supporting loyalty program design. (See Query 18 in `window_functions.sql`)

**Screenshot:**  
![First Rental Date](screenshots/19-firstValueOver.png)

**Interpretation:**  
Shows when each equipment was first rented, useful for lifecycle and utilization analysis. (See Query 19 in `window_functions.sql`)

**Screenshot:**  
![Last Maintenance Cost](screenshots/20-lastValueOver.png)

**Interpretation:**  
Displays the most recent maintenance cost for each equipment, supporting maintenance planning and cost control. (See Query 20 in `window_functions.sql`)

---

## Step 5: Results Analysis

**Descriptive Analysis – What Happened?**  
Analysis revealed that certain equipment types consistently outperform others in specific regions, and a small group of customers account for a large share of rental revenue. Maintenance costs spike during busy seasons, and running totals highlight periods of high demand.

**Diagnostic Analysis – Why These Patterns Occur?**  
Regional construction booms and customer preferences drive equipment demand. High-value customers tend to rent premium equipment more often. Maintenance cost surges align with increased fleet usage, indicating the need for proactive servicing.

**Prescriptive Analysis – Recommended Actions**  
ConsTruck Limited should focus marketing on high-value customers and regions with strong equipment performance. Scheduling maintenance before peak periods can reduce downtime. Fleet expansion should prioritize equipment types with proven demand.

---

## Step 6: Technical Implementation & Repository Structure

```
plsql-window-functions-milliam-kamanzi/
├── README.md
├── create_tables.sql
├── populate_tables.sql
├── window_functions.sql
├── sample_rentals_data.sql
├── screenshots/
│   ├── 1-customers.png
│   ├── 2-equipment.png
│   ├── 3-rentals.png
│   ├── 4-maintenance.png
│   ├── 5-schema.png
│   ├── 6-ranking.png
│   ├── 7-aggregateMonthyRentals.png
│   ├── 8-topEquipments.png
│   ├── 9-frameComparison.png
│   ├── 10-LAG.png
│   ├── 11-Lead.png
│   ├── 12-NTILE.png
│   ├── 13-cumedist.png
│   ├── 14-averageMaintainance.png
│   ├── 15-denseRank.png
│   ├── 16-maxRental.png
│   ├── 17-totalMaintainanceperEquipement.png
│   ├── 18-countOver.png
│   ├── 19-firstValueOver.png
│   ├── 20-lastValueOver.png
└── .git/
```

---

## Step 7: References

- Oracle Corporation. (2024). Oracle Database SQL Language Reference – Analytic Functions.
- TechOnTheNet. (2024). Oracle / PLSQL: Analytic Functions.
- Course Lecture Notes. (2025). Database Development with PL/SQL.
- W3Schools. (2024). SQL Window Functions.
- TutorialsPoint. (2024). SQL Window Functions Tutorial.
- GeeksforGeeks. (2024). SQL Window Functions Explained.
- Mode Analytics. (2024). SQL Window Functions Guide.
- Stack Overflow. (2024). SQL Window Functions Q&A.
- Towards Data Science. (2024). Window Functions in SQL.
- AUCA Library Database Resources. (2025).

---

## Academic Integrity Statement

All sources were properly cited. Implementations and analysis represent original work. No AI-generated content was copied without attribution or adaptation. The business context, database design, and analysis reflect my own work and understanding.
