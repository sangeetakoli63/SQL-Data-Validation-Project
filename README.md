# 📊 SQL Data Validation Project

This project demonstrates SQL-based data validation checks used in **Database Testing, Data QA, and Automated Quality Checks**.

---

## 🔍 Objective
Identify:
- Duplicate records  
- Missing/null values  
- Formatting issues (phone/email)  
- Data quality inconsistencies  

---

## 🛠 Tech Used  
- SQL (MySQL / PostgreSQL / SQLite)

---

## 📁 Files Included  
| File | Purpose |
|------|----------|
| sample_dataset.csv | Raw dataset used for testing |
| data_validation_queries.sql | SQL queries for validation checks |

---

## 📝 SQL Validation Examples

```sql
-- Count rows
SELECT COUNT(*) FROM dataset;

-- Duplicate Check
SELECT name,email,COUNT(*) FROM dataset GROUP BY name,email HAVING COUNT(*)>1;

-- Null Email Check
SELECT * FROM dataset WHERE email IS NULL OR email='';
