# Fraud Detection Analysis

## 📊 Project Overview

This project analyzes a **Fraud Detection Dataset** with over **51,000 transactions**.

### Workflow Included:

- **Data Cleaning**: Using Python (pandas) in Google Colab.
- **Database Import**: Loaded into PostgreSQL via pgAdmin GUI.
- **Exploration**: Basic SQL queries for data overview.
- **Business Questions**: Fraud trends, customer behavior, and transaction risks.
- **Findings**: Actionable insights into fraud risk and prevention strategies.

---

## 📂 Dataset

- **Source**: [Kaggle – Fraud Detection Dataset](https://www.kaggle.com/datasets/ranjitmandal/fraud-detection-dataset-csv)
- **Size**: \~51k rows

### Key Columns:

- **Transaction\_ID** – Unique transaction reference
- **Customer\_ID** – Identifier for customers
- **Amount** – Transaction amount
- **Location** – Transaction city/state
- **Transaction\_Type** – e.g., purchase, withdrawal
- **Previous\_Fraudulent\_Transactions** – Count of earlier frauds linked to customer
- **Fraudulent** – Flag (1 = fraud, 0 = legitimate)

---

## 🛠️ Steps Taken

### 1. Data Cleaning (Python – pandas in Google Colab)

- Removing duplicates
- Handling nulls: Dropping rows from critical columns, filling values for non-critical columns
- Data type validation/conversion
- Standardization/Normalization
- Export cleaned dataframe to CSV

➡️ **Colab Notebook**: [Open the notebook in Colab](https://colab.research.google.com/drive/1D4ob9iqeiV9mVZicvtqh56JA45if96Fr?usp=sharing)

### 2. Database Import (PostgreSQL via pgAdmin)

- Imported cleaned CSV using pgAdmin Import Tool
- Verified row counts (**51k rows successfully imported**)

### 3. Basic Data Exploration (SQL)

- Selected all records with `LIMIT 10` for validation
- Checked column distributions (fraud vs non-fraud transactions)
- Ran aggregate queries (e.g., `AVG`, `COUNT`) for fraud trends

---

## ❓ Business Questions & Insights

1. **Which transaction type has the highest fraud rate?**

   - Online Purchases (5.14%) top the list; ATM Withdrawals are lowest (4.72%).

2. **What is the average transaction amount in fraudulent vs. non-fraudulent cases?**

   - Fraudulent transactions average \$3,088 vs. \$2,990 for non-fraudulent.

3. **Which devices are most associated with fraud?**

   - Unknown Devices (5.55%) and Mobile (5.15%) are riskiest; Tablets are safer (4.67%).

4. **Do certain locations experience more fraud?**

   - Chicago (5.57%) and Los Angeles (5.20%) lead in fraud concentration; Seattle is lower (4.29%).

5. **How does previous fraud history affect current risk?**

   - Customers with prior fraud (1–2 or 3+) show \~5% ongoing fraud rate, vs. 4.7% for those with none.

6. **Is there a time pattern in fraud?**

   - Spikes occur at 7 AM (5.71%), 3 PM (5.74%), 6 PM (5.32%), and 8 PM (5.89%).

7. **What is the total financial impact of fraud?**

   - Out of \~\$142M total transactions, \~\$7.2M (5.07%) was lost to fraud.

---

## 📌 Key Findings

- **High-risk customers**: Repeat offenders with 3+ fraud cases.
- **High-risk transactions**: Online + high-value + late-night.
- **Geographic hotspots**: New York & Chicago need stricter monitoring.
- **Prevention strategy**: Rule-based + ML detection (amount thresholds + time of day + history).

---

## 🚀 Tools & Tech

- **Python (pandas)** – Data cleaning
- **PostgreSQL + pgAdmin** – Database management & SQL querying
- **Google Colab** – Notebook for cleaning workflow

## ​ Repo Contents

- `Google colab ipynb file/` → ipynb file that captures the data cleaning done with Pandas
- `queries/` → SQL scripts categorized by business question  
- `results/` → CSV files containing query outputs  
- `README.md` → Overview, dataset link, insights, and project structure
