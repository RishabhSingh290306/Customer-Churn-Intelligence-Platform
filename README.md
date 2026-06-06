# 📊 Customer Churn Intelligence Platform

> An end-to-end Data Analytics project that transforms raw customer data into actionable business insights through churn analysis, customer segmentation, health scoring, risk classification, and executive reporting.

---

## 🚀 Project Overview

Customer churn is one of the biggest challenges faced by subscription-based businesses. Acquiring a new customer is significantly more expensive than retaining an existing one, making customer retention a critical business objective.

The **Customer Churn Intelligence Platform** was built to analyze customer behavior, identify churn drivers, classify customers based on loyalty and risk, and provide actionable recommendations for improving customer retention.

This project simulates a real-world business analytics workflow from raw data cleaning to executive-level reporting.

---

## 🎯 Business Problem

The company wants to answer:

- Why are customers leaving?
- Which customers are most likely to churn?
- Which customers generate the most value?
- How much revenue is at risk?
- What actions can reduce churn?

This platform provides data-driven answers to these questions.

---

## 📂 Dataset Information

**Dataset:** IBM Telco Customer Churn Dataset

| Metric | Value |
|----------|---------|
| Records | 7,043 |
| Features | 21 |
| Target Variable | Churn |
| Industry | Telecommunications |

### Key Features

- Customer ID
- Gender
- Tenure
- Contract Type
- Internet Service
- Monthly Charges
- Total Charges
- Churn Status

---

## 🔄 Project Workflow

```text
Raw Dataset
     │
     ▼
Data Cleaning
     │
     ▼
Exploratory Data Analysis
     │
     ▼
Customer Segmentation
     │
     ▼
Health Score Generation
     │
     ▼
Risk Classification
     │
     ▼
Business Recommendations
     │
     ▼
Executive Dashboard
```

---

## 🧹 Data Cleaning & Preprocessing

Performed comprehensive data quality assessment:

- Missing value analysis
- Duplicate record detection
- Data type correction
- Business-rule based imputation

### Key Finding

The `TotalCharges` column contained 11 blank records belonging to customers with:

```text
Tenure = 0
```

Rather than deleting these records, they were preserved and assigned:

```text
TotalCharges = 0
```

based on business logic.

---

## 📈 Exploratory Data Analysis (EDA)

Investigated key churn drivers through visual analytics.

### Questions Answered

- What is the overall churn rate?
- Does contract type affect churn?
- Do new customers churn more?
- Are expensive plans associated with churn?
- Does internet service impact retention?

### Major Findings

✅ Churn Rate: **26.54%**

✅ Month-to-month contracts show the highest churn

✅ Low-tenure customers are most vulnerable

✅ Higher monthly charges correlate with churn

✅ Fiber optic customers exhibit elevated churn levels

---

## 👥 Customer Segmentation

Developed a custom Customer Value Score using:

- Tenure
- Monthly Charges
- Total Charges

### Segments Created

| Segment | Description |
|----------|-------------|
| Champion | Highest value and loyalty |
| Loyal | Stable long-term customers |
| Potential Loyalist | Growing customer value |
| At Risk | Retention concern |
| Lost | Lowest engagement |

### Segment Distribution

| Segment | Customers |
|----------|-----------:|
| Champion | 639 |
| Loyal | 992 |
| Potential Loyalist | 1294 |
| At Risk | 1768 |
| Lost | 2350 |

---

## ❤️ Customer Health Score Engine

Created a custom Health Score (0–100) using:

- Customer Tenure
- Monthly Charges
- Total Charges
- Contract Commitment

### Risk Categories

| Risk Level | Meaning |
|------------|---------|
| Low Risk | Strong retention indicators |
| Medium Risk | Requires monitoring |
| High Risk | High probability of churn |

### Risk Distribution

| Risk Level | Customers |
|------------|-----------:|
| Low Risk | 1057 |
| Medium Risk | 1883 |
| High Risk | 4103 |

---

## 📊 Executive Dashboard KPIs

| KPI | Value |
|------|--------:|
| Total Customers | 7,043 |
| Churn Rate | 26.54% |
| Average Health Score | 37.35 |
| High Risk Customers | 4,103 |
| Revenue At Risk | $3,704,947.85 |

---

## 💡 Business Recommendations

### High Risk Customers

- Offer targeted retention discounts
- Launch win-back campaigns
- Provide personalized outreach

### Medium Risk Customers

- Engagement campaigns
- Product usage reminders
- Upsell opportunities

### Low Risk Customers

- Loyalty rewards
- Referral incentives
- Premium service offerings

---

## 🛠️ Technologies Used

### Programming

- Python

### Data Analysis

- Pandas
- NumPy

### Data Visualization

- Matplotlib
- Seaborn

### Machine Learning Utilities

- Scikit-Learn (MinMaxScaler)

### Development Tools

- Jupyter Notebook
- Git
- GitHub
- VS Code

---

## 📁 Project Structure

```text
Customer-Churn-Intelligence-Platform/
│
├── data/
│   ├── raw/
│   │   └── WA_Fn-UseC_-Telco-Customer-Churn.csv
│   │
│   └── cleaned/
│       ├── customer_clean.csv
│       └── customer_health_dataset.csv
│
├── notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_eda.ipynb
│   ├── 04_customer_segmentation.ipynb
│   ├── 05_health_score.ipynb
│   └── 06_business_report.ipynb
│
├── screenshots/
│
├── README.md
│
└── requirements.txt
```

---

## 🎯 Skills Demonstrated

- Data Cleaning
- Data Preprocessing
- Exploratory Data Analysis
- Statistical Analysis
- Customer Segmentation
- Feature Engineering
- Business Analytics
- Risk Classification
- Dashboard Reporting
- Data Visualization
- Git & GitHub Workflow

---

## 🔮 Future Enhancements

### Machine Learning Churn Prediction

Planned upgrades include:

- Logistic Regression
- Decision Trees
- Random Forest
- XGBoost

### Advanced Features

- Churn Probability Prediction
- Customer Lifetime Value Modeling
- Automated Retention Strategy Recommendations
- Power BI Dashboard
- Streamlit Web Application

---
## Dashboard Preview

![Churn Distribution](screenshots/Customer_churn_distribution.png)

![Customer Segments](screenshots/Sustomer_segment_distribution.png)

![Risk Distribution](screenshots/customer_risk_distribution.png)

![HealthScore Distribution](screenshots/Healthscore_distribution.png)

![Contract type VS churn](screenshots/Contract_Type_VS_churn.png)

## 🏆 Project Outcome

The Customer Churn Intelligence Platform successfully transformed raw customer data into actionable business intelligence by:

- Identifying key churn drivers
- Quantifying customer risk
- Estimating revenue exposure
- Enabling targeted retention strategies

This project demonstrates a complete analytics workflow that mirrors real-world business intelligence and customer success analytics processes.

---

## 👨‍💻 Author

**Rishabh Singh**

Aspiring Data Analyst | Machine Learning Enthusiast | Building End-to-End Analytics Projects with Python, SQL, and Data Visualization 🚀

### Connect with Me

- LinkedIn: www.linkedin.com/in/rishabhsingh290306
- GitHub: https://github.com/RishabhSingh290306

---
⭐ If you found this project useful, consider giving it a star!