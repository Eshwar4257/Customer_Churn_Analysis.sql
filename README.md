# Customer Churn Analysis Using SQL

## Project Overview
This project analyzes customer churn data using MySQL to identify patterns in customer behavior and understand which customer segments have higher churn rates. The goal is to generate actionable business insights that can help improve customer retention.

## Objectives
- Calculate the overall customer churn rate.
- Analyze churn across demographic and account-related factors.
- Identify customer segments with higher churn rates.
- Practice SQL techniques used in real-world data analysis.
- Provide data-driven recommendations for customer retention.

## Dataset
- **Total records:** 10,000 customers
- **Target column:** `Churned`
- `Churned = 1`: Customer left the bank.
- `Churned = 0`: Customer stayed with the bank.

The dataset includes customer demographics, geography, credit score, account balance, product usage, activity status, complaints, and churn status.

## Tools Used
- MySQL
- MySQL Workbench
- SQL

## SQL Concepts Used
- `SELECT`, `WHERE`, `ORDER BY`
- Aggregate functions: `COUNT()`, `SUM()`, `AVG()`
- `GROUP BY` and `HAVING`
- Subqueries
- Common Table Expressions (CTEs)
- Window functions: `RANK()`
- `JOIN`
- Conditional logic: `CASE WHEN`

## Key Findings

### Overall Churn
- Total customers: 10,000
- Customers who left: 2,038
- Customers retained: 7,962
- Overall churn rate: 20.38%

### Geography
- Germany had a churn rate of 32.44%.
- Spain had a churn rate of 16.67%.
- France had a churn rate of 16.17%.

### Age Group
- Customers aged 50–59 had the highest observed churn rate at 56.04%.
- Customers under 30 had a churn rate of 7.56%.

### Customer Activity
- Inactive customers had a churn rate of 26.87%.
- Active customers had a churn rate of 14.27%.

### Number of Products
- Customers with two products had a churn rate of 7.60%.
- Customers with three products had a churn rate of 82.71%.
- All 60 customers with four products were recorded as churned.

The smaller groups with three or four products should be investigated further before drawing conclusions.

## Business Recommendations
1. Investigate the reasons for high churn in Germany.
2. Develop customer engagement strategies for inactive customers.
3. Examine the needs and service experiences of customers aged 50–59.
4. Investigate why customers with three or four products show high churn.
5. Monitor churn rates regularly and evaluate retention initiatives.

## Project Outcome
This project demonstrates how SQL can transform customer data into meaningful business insights. It helped strengthen skills in data aggregation, segmentation, querying, and analytical problem-solving.

## Limitations
The findings describe associations in the dataset and do not establish causation. Additional analysis is needed to understand the reasons behind churn and validate potential retention strategies.

## Author
**Eshwar T**

GitHub: [Eshwar4257](https://github.com/Eshwar4257)

LinkedIn: [Connect with me](https://www.linkedin.com/in/teshwar)
