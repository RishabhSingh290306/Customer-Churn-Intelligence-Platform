# 📊 Customer Churn Intelligence Platform

> **An End-to-End Customer Analytics & Business Intelligence Platform built using Python, PostgreSQL, SQL, and Power BI to analyze customer behavior, identify churn drivers, quantify revenue risk, and deliver executive-level business insights through interactive dashboards.**

<p align="center">

![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-025E8C?style=for-the-badge&logo=postgresql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)
![NumPy](https://img.shields.io/badge/NumPy-013243?style=for-the-badge&logo=numpy&logoColor=white)
![Matplotlib](https://img.shields.io/badge/Matplotlib-11557C?style=for-the-badge)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)

</p>

---

## 🚀 Project Evolution

| Version | Status | Description |
|----------|--------|-------------|
| **V1** | ✅ Completed | Customer Analytics using Python, Pandas & Data Visualization |
| **V2** | ✅ Completed | PostgreSQL Analytics Layer with SQL Views, CTEs & Window Functions |
| **V3** | ✅ Completed | Interactive Multi-Page Power BI Executive Dashboard |
| **V4** | 🔜 Planned | Machine Learning Churn Prediction & Predictive Analytics |

---
# 📖 Project Overview

Customer churn is one of the biggest challenges faced by subscription-based businesses. Studies consistently show that retaining an existing customer is significantly more cost-effective than acquiring a new one, making customer retention a critical business objective.

The **Customer Churn Intelligence Platform** is an end-to-end Customer Analytics and Business Intelligence project designed to transform raw customer data into actionable business insights. The platform combines **Python**, **PostgreSQL**, and **Power BI** to simulate a real-world analytics workflow used by Data Analysts and Business Intelligence teams.

The project follows a layered architecture where each version builds upon the previous one:

- **V1** focused on data cleaning, exploratory data analysis, customer segmentation, and health score generation using Python.
- **V2** introduced a PostgreSQL-powered analytics layer featuring SQL-based data transformation, business KPI generation, customer segmentation, health scoring, Common Table Expressions (CTEs), Window Functions, and reusable analytical Views.
- **V3** extends the platform with a fully interactive multi-page Power BI dashboard that enables executive reporting, customer analytics, revenue intelligence, and retention planning through dynamic visualizations and business-focused insights.

Rather than building isolated notebooks or dashboards, this project demonstrates the complete lifecycle of a modern Business Intelligence solution—from raw data ingestion to executive decision-making.

---

# 🎯 Business Objectives

The primary objective of this project is to answer critical business questions such as:

- Why are customers leaving?
- Which customers have the highest probability of churn?
- Which customer segments generate the highest business value?
- How much revenue is currently at risk?
- Which customers should be prioritized for retention campaigns?
- What business strategies can improve customer retention and profitability?

The insights generated through this platform enable data-driven decision making across Customer Success, Marketing, Finance, and Executive Leadership teams.

---

# ✨ Key Features

### 📊 Data Analytics

- Comprehensive Data Cleaning
- Exploratory Data Analysis (EDA)
- Business KPI Generation
- Customer Behavior Analysis

### 🗄️ SQL Analytics Layer

- PostgreSQL Database Design
- SQL Data Cleaning
- Business Queries
- Customer Segmentation
- Revenue Risk Analysis
- Health Score Calculation
- SQL Views
- Common Table Expressions (CTEs)
- Window Functions
- Aggregate Analysis

### 📈 Business Intelligence

- Executive KPI Dashboard
- Customer Analytics Dashboard
- Revenue Intelligence Dashboard
- Retention Action Center
- Interactive Filters & Drilldowns
- Dynamic KPI Monitoring

### 📉 Customer Intelligence

- Customer Segmentation
- Customer Health Score
- Revenue Risk Classification
- Retention Priority Identification
- High-Value Customer Analysis

# ⭐ Project Highlights

- 📊 End-to-End Analytics Platform
- 🗄 Enterprise PostgreSQL Analytics Layer
- 📈 Interactive Power BI Dashboard
- 👥 Customer Segmentation Engine
- ❤️ Customer Health Score
- 💰 Revenue Intelligence
- 🚨 Retention Action Center
- 📉 Revenue Risk Analysis
- 📚 Comprehensive Documentation
- 🚀 Continuous Version Evolution
- 💼 Real-World Business Use Case
- 🎯 Portfolio-Ready Project

---

# 🏗️ Project Architecture

The Customer Churn Intelligence Platform follows a layered Business Intelligence architecture where each stage transforms raw customer data into meaningful business insights.

```text
                           IBM Telco Customer Churn Dataset
                                         │
                                         ▼
                           ┌─────────────────────────┐
                           │    Data Cleaning Layer   │
                           │ Python • Pandas • NumPy  │
                           └─────────────────────────┘
                                         │
                                         ▼
                           ┌─────────────────────────┐
                           │ PostgreSQL Database      │
                           │ Relational Data Storage  │
                           └─────────────────────────┘
                                         │
                                         ▼
                    ┌─────────────────────────────────────────┐
                    │        SQL Analytics Layer              │
                    │                                         │
                    │ • Data Cleaning                         │
                    │ • Business KPI Generation               │
                    │ • Customer Segmentation                 │
                    │ • Health Score Calculation              │
                    │ • Revenue Risk Analysis                 │
                    │ • SQL Views                             │
                    │ • CTEs                                  │
                    │ • Window Functions                      │
                    └─────────────────────────────────────────┘
                                         │
                                         ▼
                        ┌────────────────────────────────┐
                        │ Power BI Executive Dashboard   │
                        └────────────────────────────────┘
                                         │
          ┌──────────────┬───────────────┬───────────────┬───────────────┐
          ▼              ▼               ▼               ▼
 Executive Overview  Customer Analytics Revenue Intelligence Retention Center
          │              │               │               │
          └──────────────┴───────────────┴───────────────┘
                                         ▼
                          Executive Decision Making
```

---

## 🔄 End-to-End Analytics Workflow

```text
Raw Dataset
     │
     ▼
Data Cleaning & Validation
     │
     ▼
Exploratory Data Analysis
     │
     ▼
PostgreSQL Database
     │
     ▼
SQL Analytics Layer
     │
     ├── Customer Segmentation
     ├── Customer Health Score
     ├── Revenue Risk Analysis
     ├── Business KPIs
     ├── SQL Views
     └── Executive Metrics
     │
     ▼
Power BI Dashboard
     │
     ├── Executive Overview
     ├── Customer Analytics
     ├── Revenue Intelligence
     └── Retention Action Center
     │
     ▼
Business Insights & Decision Making
```

---

# 🎯 Analytics Pipeline

The project is designed around a production-style analytics pipeline where each technology serves a specific role.

| Layer | Purpose | Technology |
|--------|----------|------------|
| Data Collection | Raw Customer Dataset | IBM Telco Customer Churn |
| Data Cleaning | Missing Values & Data Quality | Python, Pandas |
| Database | Centralized Data Storage | PostgreSQL |
| SQL Analytics | Business Logic & KPI Generation | PostgreSQL SQL |
| Business Intelligence | Interactive Reporting | Power BI |
| Version Control | Project Management | Git & GitHub |


---

# 💡 Why this Architecture?

Instead of performing all analysis inside a Jupyter Notebook, this project follows a layered architecture similar to enterprise Business Intelligence solutions.

Separating data processing, SQL analytics, and dashboard visualization improves scalability, maintainability, and reusability while demonstrating a real-world analytics workflow used by Data Analysts and Business Intelligence teams.


# 🎯 Business Problem

Customer retention is one of the most important challenges for subscription-based businesses.

Every customer who leaves the company not only reduces recurring revenue but also increases customer acquisition costs. Understanding why customers churn and identifying customers who require retention efforts are essential for sustainable business growth.

The objective of this project is to transform raw customer data into actionable business intelligence that enables decision-makers to proactively reduce churn and improve customer lifetime value.

---

# ❓ Business Questions Answered

This project addresses several key business questions.

### Customer Behavior

- What is the overall customer churn rate?
- Which customer segments are most likely to churn?
- Which customers generate the highest value?

---

### Revenue Analysis

- How much revenue is currently at risk?
- Which contract types generate the highest revenue?
- Which payment methods are associated with higher churn?

---

### Customer Retention

- Which customers should be contacted first?
- Which customer segments require immediate attention?
- How can customer health be monitored over time?

---

### Executive Reporting

- What KPIs should executives monitor?
- Which business metrics indicate customer loyalty?
- Which trends require strategic intervention?

---

# 🎯 Expected Business Impact

By integrating SQL analytics with interactive dashboards, this platform enables organizations to:

- Improve customer retention strategies.
- Identify revenue leakage.
- Prioritize high-value customers.
- Support executive decision-making.
- Increase customer lifetime value.
- Monitor key business metrics through real-time visual reporting.

# 📊 Dashboard Preview

| Executive Overview | Customer Analytics |
|:------------------:|:------------------:|
| <img src="D:\Customer-Churn-Intelligence-Platform\screenshots\executive_overview.png" width="100%"> | <img src="D:\Customer-Churn-Intelligence-Platform\screenshots\customer_analytics.png" width="100%"> |

| Revenue Intelligence | Retention Action Center |
|:---------------------:|:-----------------------:|
| <img src="D:\Customer-Churn-Intelligence-Platform\screenshots\revenue_intelligence.png" width="100%"> | <img src="D:\Customer-Churn-Intelligence-Platform\screenshots\retention_action_center.png" width="100%"> |

---

# 📸 Dashboard Gallery

| Dashboard | Purpose |
|------------|---------|
| 📊 Executive Overview | Executive KPI Monitoring |
| 👥 Customer Analytics | Customer Behavior Analysis |
| 💰 Revenue Intelligence | Revenue & Profitability Analysis |
| 🚨 Retention Action Center | Customer Retention Strategy |

---


## 📈 Business Intelligence Dashboard

A fully interactive Power BI dashboard designed for executive reporting and operational decision-making.

### Dashboard Pages

### 📊 Executive Overview

- Executive KPI Monitoring
- Customer Churn Overview
- Revenue Performance
- Customer Health Analysis
- Business Summary

---

### 👥 Customer Analytics

- Customer Demographics
- Contract Analysis
- Internet Service Analysis
- Payment Method Analysis
- Customer Segmentation
- Customer Tenure Analysis

---

### 💰 Revenue Intelligence

- Revenue Performance
- Revenue by Contract
- Customer Lifetime Value
- Revenue at Risk
- Revenue by Customer Segment
- Top Revenue Customers

---

### 🚨 Retention Action Center

- High Risk Customers
- Retention Priority
- Revenue Exposure
- High Risk Segments
- Customer Retention Planning
- Actionable Recommendations

---

## 🎯 Customer Intelligence

The project introduces multiple business-focused analytical models.

### Customer Segmentation

Customers are classified into:

- 🏆 Champion
- ⭐ Loyal
- 🌱 Potential Loyalist
- ⚠ At Risk
- ❌ Lost

---

### Customer Health Score

Each customer receives a custom health score based on:

- Customer Tenure
- Contract Type
- Monthly Charges
- Total Charges

Customers are automatically classified into:

- 🟢 Low Risk
- 🟡 Medium Risk
- 🔴 High Risk

---

### Revenue Intelligence

Revenue metrics include:

- Total Revenue
- Revenue at Risk
- Average Monthly Revenue
- Customer Lifetime Value
- Revenue Contribution by Segment
- Revenue by Contract Type

---

### Business Decision Support

The platform enables organizations to:

- Identify customers likely to churn
- Prioritize retention campaigns
- Monitor executive KPIs
- Track customer health
- Analyze revenue trends
- Optimize customer lifetime value

---

# 💼 Skills Demonstrated

### Data Analytics

- Data Cleaning
- Data Validation
- Exploratory Data Analysis
- Statistical Analysis

---

### SQL & Database

- PostgreSQL
- SQL
- Views
- CTEs
- Window Functions
- Aggregate Functions
- CASE Statements
- Business KPIs

---

### Business Intelligence

- Microsoft Power BI
- Dashboard Design
- Executive Reporting
- Interactive Visualizations
- KPI Development
- Data Storytelling

---

### Software Engineering

- Git
- GitHub
- Version Control
- Documentation
- Project Organization

---


# 🛠️ Technology Stack

The Customer Churn Intelligence Platform integrates multiple technologies across the complete Business Intelligence workflow. Each technology serves a specific purpose within the analytics pipeline.

---

## 💻 Programming & Data Analytics

| Technology | Purpose |
|------------|---------|
| **Python** | Data Cleaning, Exploratory Data Analysis & Feature Engineering |
| **Pandas** | Data Manipulation & Transformation |
| **NumPy** | Numerical Computing |
| **Matplotlib** | Data Visualization |
| **Seaborn** | Statistical Data Visualization |

---

## 🗄️ Database & SQL

| Technology | Purpose |
|------------|---------|
| **PostgreSQL** | Relational Database Management |
| **pgAdmin** | Database Administration |
| **SQL** | Business Analytics & Querying |
| **Views** | Reusable Business Reports |
| **CTEs** | Complex Analytical Queries |
| **Window Functions** | Customer Ranking & Advanced Analytics |

---

## 📊 Business Intelligence

| Technology | Purpose |
|------------|---------|
| **Microsoft Power BI** | Executive Dashboard Development |
| **Power Query** | Data Transformation |
| **DAX** | KPI & Business Metric Calculations |

---

## ⚙️ Development Tools

| Technology | Purpose |
|------------|---------|
| **VS Code** | Development Environment |
| **Jupyter Notebook** | Analytics & Prototyping |
| **Git** | Version Control |
| **GitHub** | Repository Hosting & Collaboration |


---

# 📁 Repository Structure

```text
Customer-Churn-Intelligence-Platform/
│
├── 📂 data/
│   ├── raw/
│   │   └── WA_Fn-UseC_-Telco-Customer-Churn.csv
│   │
│   └── cleaned/
│       ├── customer_clean.csv
│       └── customer_health_dataset.csv
│
├── 📂 notebooks/
│   ├── 01_data_understanding.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_eda.ipynb
│   ├── 04_customer_segmentation.ipynb
│   ├── 05_health_score.ipynb
│   └── 06_business_report.ipynb
│
├── 📂 database/
│   ├── schema.sql
│   ├── load_data.sql
│   ├── views.sql
│   └── analytics_queries.sql
│
├── 📂 sql/
│   ├── 01_data_exploration.sql
│   ├── 02_customer_analysis.sql
│   ├── 03_customer_segmentation.sql
│   ├── 04_health_score.sql
│   ├── 05_revenue_risk.sql
│   ├── 06_cte_analysis.sql
│   └── 07_window_functions.sql
│
├── 📂 powerbi/
│   └── Customer_Churn_Dashboard.pbix
│
├── 📂 screenshots/
│   ├── executive_overview.png
│   ├── customer_analytics.png
│   ├── revenue_intelligence.png
│   ├── retention_action_center.png
│   └── dashboard_preview.png
│
├── 📂 docs/
│
├── README.md
├── LICENSE
└── requirements.txt
```



# 🔄 End-to-End Analytics Workflow

```text
Raw Customer Dataset
        │
        ▼
Data Cleaning & Validation
        │
        ▼
PostgreSQL Database
        │
        ▼
SQL Analytics Layer
        │
 ┌──────┼────────────────────────────┐
 │      │                            │
 ▼      ▼                            ▼
Customer Health Score        Customer Segmentation
 │      │                            │
 └──────┼────────────────────────────┘
        ▼
Revenue Risk Analysis
        │
        ▼
Business KPI Generation
        │
        ▼
SQL Views
        │
        ▼
Power BI Executive Dashboard
        │
        ▼
Executive Decision Making
```

---


# 🌟 Project Impact

The Customer Churn Intelligence Platform transforms raw customer data into strategic business intelligence by combining Python analytics, PostgreSQL, SQL, and Power BI into a unified decision-support system.

Rather than simply reporting historical trends, the platform enables organizations to identify customer risk, quantify financial exposure, prioritize retention efforts, and support executive decision-making through interactive, data-driven insights.

This project demonstrates how modern Business Intelligence solutions can bridge the gap between technical analytics and business strategy.

# 🚀 Getting Started

Follow the steps below to set up and explore the Customer Churn Intelligence Platform on your local machine.

---

# 📋 Prerequisites

Before running the project, ensure you have the following software installed:

| Software | Version |
|----------|---------|
| Python | 3.10+ |
| PostgreSQL | 14+ |
| pgAdmin | Latest |
| Microsoft Power BI Desktop | Latest |
| Git | Latest |
| Jupyter Notebook | Latest |

---

# 📥 Clone the Repository

```bash
git clone https://github.com/RishabhSingh290306/Customer-Churn-Intelligence-Platform.git

cd Customer-Churn-Intelligence-Platform
```

---

# 🐍 Install Python Dependencies

```bash
pip install -r requirements.txt
```

---

# 🗄 PostgreSQL Setup

Create a PostgreSQL database.

```sql
CREATE DATABASE customer_churn;
```

Open pgAdmin and execute:

- `schema.sql`
- `load_data.sql`
- `views.sql`

This will create all required tables and analytical views.

---

# 📊 Run the Jupyter Notebooks

Launch Jupyter Notebook.

```bash
jupyter notebook
```

Run the notebooks in the following order:

1. Data Understanding
2. Data Cleaning
3. Exploratory Data Analysis
4. Customer Segmentation
5. Customer Health Score
6. Business Report

---

# 📈 Open the Power BI Dashboard

Navigate to:

```text
powerbi/
```

Open:

```text
Customer_Churn_Dashboard.pbix
```

Refresh the data if required.

You can now explore all four dashboard pages:

- 📊 Executive Overview
- 👥 Customer Analytics
- 💰 Revenue Intelligence
- 🚨 Retention Action Center

---

# 🎛 Dashboard Navigation

The dashboard contains interactive filters that allow users to explore customer behavior dynamically.

### Available Filters

- Gender
- Contract Type
- Internet Service
- Payment Method
- Churn Status

Each filter updates all relevant charts and KPIs in real time.

---

# 📁 Repository Structure

```text
Customer-Churn-Intelligence-Platform
│
├── data/
│
├── database/
│
├── sql/
│
├── notebooks/
│
├── powerbi/
│
├── screenshots/
│
├── README.md
│
└── requirements.txt
```

---

# 📌 Dashboard Features

### Executive Overview

Monitor overall business performance through executive KPIs.

---

### Customer Analytics

Analyze customer demographics, contracts, services, and behavioral trends.

---

### Revenue Intelligence

Understand revenue distribution, high-value customers, and financial exposure.

---

### Retention Action Center

Identify high-risk customers and prioritize retention strategies.

---

# 🔄 Project Workflow

```text
Raw Dataset
      │
      ▼
Python Cleaning
      │
      ▼
PostgreSQL Database
      │
      ▼
SQL Analytics
      │
      ▼
Power BI Dashboard
      │
      ▼
Business Decisions
```

---

# 🎯 Intended Audience

This project is suitable for:

- Data Analysts
- Business Intelligence Analysts
- SQL Developers
- Power BI Developers
- Students Learning Data Analytics
- Recruiters Evaluating Analytics Portfolios

---

# 💡 Learning Outcomes

This project demonstrates practical experience with:

- Data Cleaning
- SQL Analytics
- Relational Databases
- Business Intelligence
- Dashboard Design
- Customer Segmentation
- KPI Development
- Executive Reporting
- Data Storytelling

# 🌟 Why This Project Stands Out

The **Customer Churn Intelligence Platform** was built with the goal of simulating how customer analytics and Business Intelligence solutions are developed in real-world organizations.

Unlike many customer churn projects that stop after creating a few visualizations or training a machine learning model, this project demonstrates the complete lifecycle of transforming raw business data into actionable executive insights.

Rather than focusing on a single technology, the platform integrates **Python**, **PostgreSQL**, **SQL**, and **Power BI** into a unified analytics solution.

---

# 🎓 Learning Journey

This repository also represents my personal learning journey in Data Analytics and Business Intelligence.

Instead of building isolated projects, I chose to continuously improve a single platform by introducing new technologies and capabilities over time.

This approach helped me understand not only individual tools but also how they integrate into a complete analytics workflow used by modern organizations.

The next planned version (V4) will extend the platform with Machine Learning models for churn prediction, allowing the project to evolve from descriptive analytics to predictive analytics.


---

> **The Customer Churn Intelligence Platform demonstrates how raw customer data can be transformed into actionable business intelligence through a combination of analytics, SQL engineering, and interactive visualization. It reflects the complete workflow expected from modern Data Analysts and Business Intelligence professionals.**

---

# 🛣️ Roadmap

The Customer Churn Intelligence Platform is designed as an evolving analytics platform. Future versions will continue to expand its capabilities with advanced analytics, predictive modeling, and deployment.

## ✅ Version History

| Version | Status | Description |
|---------|--------|-------------|
| **V1.0.0** | ✅ Released | Python Data Analytics, EDA, Customer Segmentation & Health Score |
| **V2.0.0** | ✅ Released | PostgreSQL Analytics Layer, SQL Views, CTEs & Window Functions |
| **V3.0.0** | ✅ Released | Interactive Multi-Page Power BI Executive Dashboard |
| **V4.0.0** | 🔜 Planned | Machine Learning Churn Prediction |
| **V5.0.0** | 🔮 Future | Streamlit Web Application & Model Deployment |


---

## 🤝 Contributing

Contributions, feature suggestions, and improvements are always welcome.

If you have ideas for improving this project:

1. Fork the repository
2. Create a new feature branch
3. Commit your changes
4. Open a Pull Request

Constructive feedback is always appreciated.

---

## 📄 License

You are free to use, modify, and distribute this project with proper attribution.

---

## 🙏 Acknowledgements

Special thanks to the following resources that made this project possible:

- IBM for providing the Telco Customer Churn Dataset
- PostgreSQL Community
- Microsoft Power BI
- Python Open Source Community

---

## 👨‍💻 About the Author

Hi! I'm **Rishabh Singh**, an aspiring **Data Analyst** and **Machine Learning Enthusiast** passionate about transforming raw data into actionable business insights.

I'm currently building projects that combine:

- 📊 Data Analytics
- 🗄️ SQL & PostgreSQL
- 📈 Business Intelligence
- 🤖 Machine Learning
- 🐍 Python Development

My goal is to build end-to-end analytics solutions that solve real-world business problems while continuously improving my technical skills.

---

## 📬 Connect With Me

<p align="center">

<a href="https://github.com/RishabhSingh290306">
<img src="https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white">
</a>

<a href="https://www.linkedin.com/in/rishabhsingh290306">
<img src="https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white">
</a>

</p>

---

## ⭐ Support the Project

If you found this project useful or interesting, consider supporting it by:

⭐ Starring the repository

🍴 Forking the project

📢 Sharing it with others

💬 Providing feedback or suggestions

Every contribution and piece of feedback helps improve the project.

---

# 📌 Final Thoughts

The **Customer Churn Intelligence Platform** is more than a dashboard or a collection of SQL queries—it's an end-to-end analytics project that demonstrates the complete journey from raw data to business decision-making.

By combining **Python**, **PostgreSQL**, **SQL**, and **Power BI**, the project showcases a modern Business Intelligence workflow used by data professionals to uncover insights, quantify business impact, and support strategic decisions.

As the project evolves, future versions will introduce **Machine Learning**, **predictive analytics**, and **web deployment**, transforming it into a complete customer intelligence platform.

---

<div align="center">

## Thank you for visiting the Customer Churn Intelligence Platform repository.

**Happy Learning! 🚀**

</div>