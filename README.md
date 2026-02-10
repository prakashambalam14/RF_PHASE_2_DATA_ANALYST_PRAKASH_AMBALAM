# 📊 Phase 2 – Data Analyst Internship Tasks

**Name:** Prakash  
**Role:** Data Analyst Intern  
**Repository:** `rf-phase2-data-analyst-prakash`

---

## 🔹 Overview

This repository contains my **Phase 2 – Intermediate Internship Tasks** for the **Data Analyst** role.  
The work demonstrates my ability to handle real business data using **Python, SQL, and BI tools**, and to convert raw data into **meaningful business insights and dashboards**.

---

## 🛠 Tools Used

- Python (Pandas, Matplotlib , OS)
- VC CODE /  GOOGLE COLAB / IDLE
- MySQL / SQLite
- Power BI / Tableau
- GitHub

---


## ✅ Theoretical Tasks

📄 **File:** `/Thoery Files`

### Topics To Covered

- End-to-End Data Analysis Lifecycle (with Business Example)
- Descriptive vs Diagnostic Analytics
- Correlation vs Causation
- Data Bias and Missing Data Handling Strategies
- KPIs vs Metrics
- Case Study: Why Dashboards Fail Even with Correct Data

---

## ✅ Practical Task 1: Business Dataset Analysis Report

Dataset: Video Game Sales Dataset
Role: Data Analyst Intern
Tools Used: Google Colab

📁 **Notebook:** `PYTHON PRACTICAL`

### Steps Performed

- Data Cleaning
- Handling Missing Values
- Removing Duplicate Records
- Business Question Analysis

🧹 Data Cleaning Summary

Several preprocessing steps were applied before analysis:

Duplicate records were checked and removed
Sales columns missing values were filled with 0 (interpreted as no recorded sales)
Missing developer names were filled with “Unknown”
Critic scores were imputed using the median score to avoid data loss
Date columns were converted to datetime format, and missing dates were preserved as null rather than artificially filled
These steps ensured data consistency while preserving maximum usable records.

### Business Questions Answered

1️⃣ Which video games have generated the highest total sales across all consoles?

2️⃣ Which game genres contribute the most to total global sales?

3️⃣ Which gaming consoles have produced the highest overall sales revenue?

4️⃣ Which publishers dominate the market in terms of total game sales?

6️⃣ How does genre performance vary across different regions (NA, JP, PAL, Other)?


✅ Business Conclusion

The analysis shows that commercial success in the video game industry is primarily driven by franchise strength, genre category, publisher scale, and multi-platform availability rather than critic scores alone. Companies should prioritize cross-platform releases and high-performing genres while adapting strategies by region.

📸 **Screenshots:** `/Assets/PYIMG`
Img and Code Files Are In Asset Folder Go Check It !

#  College Database SQL Project — Task 2 (Phase 2 Internship)

##  Project Overview

This project demonstrates relational database design and SQL analysis using a College Management dataset. The objective was to design normalized tables, establish foreign key relationships, and perform business-oriented SQL queries using JOINs, GROUP BY, and subqueries.

The database models a college environment including departments, students, courses, and enrollments. Queries were written to extract meaningful academic and administrative insights rather than only raw outputs.

---

##  Database Schema Design

Four relational tables were created with proper primary and foreign key constraints:

### ✅ Tables Created

* **departments** — stores department details
* **students** — stores student information (linked to departments)
* **courses** — stores course details (linked to departments)
* **enrollments** — bridge table connecting students and courses with marks

### 🔗 Relationships

* One department → many students
* One department → many courses
* Many students ↔ many courses (via enrollments table)

Foreign keys were used to maintain referential integrity across tables.

---


## 🔍 SQL Query Categories Performed

### ✅ JOIN Queries

* Student with their department names
* Student + enrolled courses + marks
* Courses mapped to departments

**Purpose:** Combine related data across multiple tables to produce meaningful views.

---

### ✅ GROUP BY Queries

* Student count per department
* Average marks per course
* Average marks per department

**Purpose:** Aggregated performance and distribution analysis.

---

### ✅ Filter Queries

* Students scoring above a threshold
* Courses with higher credit load

**Purpose:** Identify high performers and academically heavy subjects.

---

### ✅ Subquery Used

* Students scoring above overall average marks

**Purpose:** Demonstrate nested query logic for comparative performance filtering.

---

## 💼 Business Insights Enabled by Queries

* Department-wise student distribution
* Course-wise academic performance
* Identification of high-performing students
* Department performance comparison
* Course difficulty trends using average marks
* Enrollment-based course popularity

---

## 🛠 Tools Used

* MySQL Workbench (SQL execution)
* Relational schema design
* Foreign key constraints
* Aggregate and analytical SQL queries

---


## ✅ Task Requirements Covered

* ✔ Relational schema design
* ✔ Foreign keys implemented
* ✔ Multi-table JOIN queries
* ✔ GROUP BY aggregations
* ✔ Subquery usage
* ✔ Business-style interpretations

---

## 🎯 Outcome

This task demonstrates practical SQL skills including schema modeling, relational joins, aggregation queries, and analytical filtering. The project reflects real-world database usage patterns and supports business-style academic insights.

📸 **Output Screenshots:** `/assets/sqlimg` 
Img and Code Files Are In Asset Folder Go Check It !

---

## ✅ Practical Task 3: Dashboard Visualization

Remaining --
