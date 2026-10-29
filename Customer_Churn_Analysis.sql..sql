-- ============================================
-- PROJECT: Customer Churn Analysis
-- TOOL: MySQL Workbench
-- OBJECTIVE: Analyze customer churn and identify
--            patterns to support retention.
-- ============================================

USE customer_churn;

-- Check the total number of customer records
SELECT COUNT(*) AS total_customers
FROM customers;
-- ============================================
-- SECTION 1: OVERALL CUSTOMER CHURN
-- ============================================

SELECT
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    COUNT(*) - SUM(Churned) AS retained_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers;
-- ============================================
-- SECTION 2: CHURN BY GEOGRAPHY
-- ============================================

SELECT
    Geography,
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers
GROUP BY Geography
ORDER BY churn_rate_percentage DESC;
-- ============================================
-- SECTION 3: CHURN BY GENDER
-- ============================================

SELECT Gender,
       COUNT(*) AS total_customers,
       SUM(Churned) AS churned_customers,
       ROUND(AVG(Churned) * 100, 2) AS churn_rate
FROM customers
GROUP BY Gender;


-- ============================================
-- SECTION 4: CHURN BY ACTIVE MEMBERSHIP
-- ============================================

SELECT IsActiveMember,
       COUNT(*) AS total_customers,
       SUM(Churned) AS churned_customers,
       ROUND(AVG(Churned) * 100, 2) AS churn_rate
FROM customers
GROUP BY IsActiveMember;


-- ============================================
-- SECTION 5: CHURN BY NUMBER OF PRODUCTS
-- ============================================

SELECT NumOfProducts,
       COUNT(*) AS total_customers,
       SUM(Churned) AS churned_customers,
       ROUND(AVG(Churned) * 100, 2) AS churn_rate
FROM customers
GROUP BY NumOfProducts
ORDER BY NumOfProducts;


-- ============================================
-- SECTION 6: CHURN BY AGE GROUP
-- ============================================

SELECT `Age Group`,
       COUNT(*) AS total_customers,
       SUM(Churned) AS churned_customers,
       ROUND(AVG(Churned) * 100, 2) AS churn_rate
FROM customers
GROUP BY `Age Group`
ORDER BY churn_rate DESC;


-- ============================================
-- SECTION 7: CHURN BY CREDIT SCORE GROUP
-- ============================================

SELECT `credit score group`,
       COUNT(*) AS total_customers,
       SUM(Churned) AS churned_customers,
       ROUND(AVG(Churned) * 100, 2) AS churn_rate
FROM customers
GROUP BY `credit score group`
ORDER BY churn_rate DESC;


-- ============================================
-- SECTION 8: CHURN BY BALANCE GROUP
-- ============================================

SELECT `Balance Group`,
       COUNT(*) AS total_customers,
       SUM(Churned) AS churned_customers,
       ROUND(AVG(Churned) * 100, 2) AS churn_rate
FROM customers
GROUP BY `Balance Group`
ORDER BY churn_rate DESC;


-- ============================================
-- SECTION 9: CHURN BY COMPLAINT STATUS
-- ============================================

SELECT Complain,
       COUNT(*) AS total_customers,
       SUM(Churned) AS churned_customers,
       ROUND(AVG(Churned) * 100, 2) AS churn_rate
FROM customers
GROUP BY Complain;


-- ============================================
-- SECTION 10: ADVANCED - CUSTOMER RANKING
-- ============================================

SELECT CustomerId,
       Geography,
       Balance,
       RANK() OVER (ORDER BY Balance DESC) AS balance_rank
FROM customers
LIMIT 10;


-- ============================================
-- SECTION 11: ADVANCED - CHURN BY COUNTRY
-- Using a Common Table Expression (CTE)
-- ============================================

WITH CountryChurn AS (
    SELECT Geography,
           COUNT(*) AS total_customers,
           SUM(Churned) AS churned_customers
    FROM customers
    GROUP BY Geography
)
SELECT Geography,
       total_customers,
       churned_customers,
       ROUND(churned_customers * 100.0 /
             total_customers, 2) AS churn_rate
FROM CountryChurn
ORDER BY churn_rate DESC;


-- ============================================
-- SECTION 12: CUSTOMER RISK CATEGORIES
-- Rule-based example, not a prediction model
-- ============================================

SELECT CustomerId,
       Age,
       IsActiveMember,
       Churned,
       CASE
           WHEN IsActiveMember = 0 AND Age >= 50
               THEN 'High Risk'
           WHEN IsActiveMember = 0 OR Age >= 50
               THEN 'Medium Risk'
           ELSE 'Low Risk'
       END AS Risk_Category
FROM customers
LIMIT 20;