# Global Retail Sentiment Analyzer 🌍📊
### Bridging International E-Commerce Realities with Data-Driven Solutions

## 📌 Project Overview
In a globalized retail market, customer feedback is generated instantly across multiple borders and languages. However, the data that reaches a corporate office is often disconnected from the daily operational realities of the business. 

The **Global Retail Sentiment Analyzer** is an end-to-end data analytics pipeline designed to ingest multilingual e-commerce customer reviews, process them using text analytics logic, store them in a structured relational database, and extract critical business insights. 

By utilizing real-world data from the open-source **Multilingual Amazon Reviews Corpus (MARC)**, this project demonstrates how to translate messy, multi-country customer feedback into clear, actionable business strategies.

---

## 🛠️ The Tech Stack
* **Language & Automation:** Python 3 (Pandas, Numpy)
* **Database & Architecture:** PostgreSQL (Relational Design, Indexing, Integrity Constraints)
* **Text Analytics Engine:** Python NLP Ecosystem (`TextBlob` / `deep-translator`)
* **Environment:** Git, GitHub, Local PostgreSQL Server

---

## 📐 Database Architecture
To ensure strict data integrity and high performance when querying thousands of international records, the data model utilizes a decoupled relational structure inside **PostgreSQL**:

```sql
-- Core Schema Relationships:
-- [CUSTOMERS] (1) -------> (N) [REVIEWS] (Cascaded constraints)
```

Key architectural highlights of the schema include:
* **Strict Integrity Constraints:** Utilizing `CHECK` constraints to validate star rating ranges (1-5) at the database layer.
* **Performance Indexing:** Strategic creation of composite indexes on high-frequency filtering fields (`detected_language`, `sentiment_label`, `product_category`) to optimize complex aggregations.
* **Data Security:** Strict usage of `.env` configurations to protect local database server credentials during ingestion.

---

## 🔄 The Data Pipeline Workflow

### 1. Extraction & Ingestion (ETL)
* Ingesting data from the Multilingual Amazon Reviews Corpus via Python.
* Filtering and processing high-volume text fields across target regional markets (English and French).

### 2. The Text Analytics Engine
* Automated language classification and normalization.
* Polarity scoring mapping numerical weights (`-1.00` to `+1.00`) to text feedback.
* Categorization logic assigning structured values (`Positive`, `Neutral`, `Negative`) back into the database architecture.

### 3. Business Intelligence & Querying
* Executing raw SQL analytical scripts to uncover hidden patterns that standard aggregations miss (e.g., cross-referencing shipping sentiment drop-offs with specific geographic country codes).

---

## 🎯 Key Business Questions Answered
This project shifts away from pure code tracking to mimic the exact responsibilities of an embedded Data Analyst. The completed workflow answers critical cross-border issues:
1. *Which linguistic or geographic demographic experiences the lowest average sentiment score, indicating a localized operational or supply chain failure?*
2. *What specific product categories spark disproportionate negative text trends within French-speaking markets?*
3. *How do real-world floor issues (miscounts, technical delays, inventory lag) manifest mathematically within global database trends?*

---

## 📦 How to Run This Project Locally
*(Documentation for installation and pipeline initialization steps will be populated as development phases complete.)*

---
📄 **Author:** Driven by an operational background in retail business environments, specializing in translating raw technical metrics into actionable, global operational strategies.



