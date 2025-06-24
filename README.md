# 👥 HR Analytics Dashboard (SQL + Power BI)

This project analyzes employee data to uncover key HR metrics like attrition rate, department-wise performance, salary insights, and headcount trends — using SQL Server and Power BI.

---

## 📊 Project Summary

A complete HR dashboard that allows HR managers and analysts to:
- Monitor employee attrition
- Track hiring/resignation trends
- Compare salary and headcount across departments
- Visualize workforce gender distribution

---

## 🧾 Dataset Overview

Simulated HR dataset with the following columns:

| Column         | Description                              |
|----------------|------------------------------------------|
| employee_id    | Unique employee ID                       |
| employee_name  | Employee's full name                     |
| gender         | Male / Female                            |
| age            | Employee's age                           |
| department     | Department (e.g., HR, Sales, Engineering)|
| job_role       | Job title                                |
| hire_date      | Date joined                              |
| resign_date    | Date resigned (or NULL if active)        |
| salary         | Monthly salary                           |
| region         | Office location                          |

🗂️ File: `/data/hr_employee_data.csv`

---

## 🛠 Tools Used

- **SQL Server** (SSMS) – Data import, cleaning, and analysis
- **SQL** – Querying and creating analytical metrics
- **Power BI** – Building interactive dashboards
- **GitHub** – Version control and portfolio hosting

---

## 🧪 Key SQL Queries

- Total employees / Active employees
- Monthly hiring and resignation trends
- Attrition rate by department
- Average salary by department
- Gender distribution
- Top job roles by salary

📁 Stored in `/sql/`

---

## 📈 Power BI Visuals

- ✅ KPI Cards: Total, Active, Resigned Employees
- 📊 Line Chart: Hiring vs Resignation Trend
- 🏢 Bar Charts: Department-wise Headcount, Avg Salary, Attrition %
- 👨‍👩‍👧‍👦 Pie Chart: Gender Distribution
- 📋 Table: Employee Details with slicers

📎 File: `/dashboard/HR_Analytics.pbix`

---

## 📂 Project Structure
/data
└── hr_employee_data.csv
/sql
└── hr_analytics.sql
/dashboard
└── HR_Analytics.pbix
└── dashboard-overview.png
README.md


---

## 📬 Contact

For collaboration or questions, feel free to connect via [Gmail](masvp463@gmail.com) or raise an issue in this repo.

---

## ⭐ If you found this helpful, give it a star and share!
