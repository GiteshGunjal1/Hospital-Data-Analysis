# Hospital-Data-Analysis

 

---

# 🏥 Hospital Data Analysis (SQL Project)

This project is a **Hospital Database Analysis** using **SQL queries** to extract, manipulate, and summarize patient, doctor, and hospital staff data.  
The project demonstrates **use of JOINS**, **Subqueries**, **Aggregate functions**, and **Conditional statements** to perform complex data analysis tasks on a hospital management system.

## 📋 Project Highlights:
- **Inner Joins** and **Left Joins** to combine multiple tables.
- **Subqueries** to filter and compute specific results (can be added for advanced query optimization).
- **Group By** and **Aggregate functions** (like COUNT, SUM, AVG) for summary reports.
- **Conditional Filtering** (e.g., WHERE clauses).

---

## 📚 Queries Included:

1. **Find Doctors Who Treated Diabetes Patients**  
   - **Join** between `DOCTOR` and `DIAGNOSIS`.

2. **List Patients Prescribed a Specific Medication (`B205`)**  
   - **Join** between `PATIENT` and `MEDICATION_PRESCRIBED`.

3. **Find Total Workers in Each Department**  
   - **Multiple Joins** (`DEPARTMENT`, `DOCTOR`, and `WORKER`) + **Group By**.

4. **Retrieve Names & Phones of Diabetes Patients**  
   - **Join** between `PATIENT` and `DIAGNOSIS`.

5. **Find Doctors Working in the ER Department**  
   - **Join** between `DOCTOR` and `WORKER`.

6. **List Patients with Positive Test Results**  
   - **Join** between `PATIENT` and `TESTS`.

7. **Calculate Total Salary Expenditure**  
   - **SUM** aggregation over `WORKER`.

8. **Show Cafeteria Staff Details**  
   - **Joins** between `CAFETERIA_STAFF`, `STAFF`, and `CAFETERIA`.

9. **List Patients and Their Medication (Including No Medication)**  
   - **Left Joins** to include patients without medication.

10. **Find Average Age of Patients Diagnosed with Flu**  
    - **Join** and **Aggregate** using `AVG`.

---

## 🛠 Technologies Used:
- SQL (MySQL / PostgreSQL or any RDBMS)
- SQL Features:  
  - `JOIN` (INNER JOIN, LEFT JOIN)  
  - `GROUP BY`, `WHERE`, `HAVING`
  - `Aggregate Functions` (COUNT, SUM, AVG)
  - **Potential Subqueries** for advanced querying (can be added).

---

## 💡 How Subqueries Can Be Added (Suggestions):
You can enhance this project by adding subqueries like:
- Fetch doctors treating the maximum number of patients.  
- Find patients who haven't undergone any tests using **NOT EXISTS** subquery.
- List departments where the average worker salary is above the hospital average using **subqueries inside WHERE**.

---
