-- SHOW VARIABLES LIKE 'local_infile';
-- USE customer_churn;

-- SELECT COUNT(*) AS current_rows
-- FROM customers;
-- SELECT COUNT(*) AS total_rows,
--        COUNT(DISTINCT CustomerId) AS unique_ids
-- FROM customers;
-- SELECT COUNT(DISTINCT CustomerId) AS unique_ids
-- FROM customers;
-- SELECT *
-- FROM customers
-- LIMIT 5;
-- SELECT *
-- FROM customers
-- WHERE CustomerId = 0 OR CustomerId IS NULL;
-- DELETE FROM customers
-- WHERE CustomerId = 0;
-- SELECT COUNT(*) AS total_rows,
--        COUNT(DISTINCT CustomerId) AS unique_ids
-- FROM customers;
-- SELECT
--     Churned,
--     COUNT(*) AS total_customers
-- FROM customers
-- GROUP BY Churned;
-- SELECT
--     COUNT(*) AS total_customers,
--     SUM(Churned) AS churned_customers,
--     ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
-- FROM customers;
SELECT
    Gender,
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers
GROUP BY Gender;
SELECT
    Geography,
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers
GROUP BY Geography
ORDER BY churn_rate_percentage DESC;
SELECT
    IsActiveMember,
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers
GROUP BY IsActiveMember;
SELECT
    NumOfProducts,
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers
GROUP BY NumOfProducts
ORDER BY NumOfProducts;
SELECT
    `Age Group`,
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers
GROUP BY `Age Group`
ORDER BY churn_rate_percentage DESC;
SELECT
    `credit score group`,
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers
GROUP BY `credit score group`
ORDER BY churn_rate_percentage DESC;
SELECT
    `Balance Group`,
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers
GROUP BY `Balance Group`
ORDER BY churn_rate_percentage DESC;
SELECT
    `Credit Card`,
    COUNT(*) AS total_customers,
    SUM(Churned) AS churned_customers,
    ROUND(AVG(Churned) * 100, 2) AS churn_rate_percentage
FROM customers
GROUP BY `Credit Card`
ORDER BY `Credit Card`;
SELECT
    CustomerId,
    Age,
    Geography,
    Balance,
    Churned
FROM customers
WHERE Age > (
    SELECT AVG(Age)
    FROM customers
)
ORDER BY Age DESC
LIMIT 10;
SELECT
    CustomerId,
    Geography,
    Balance,
    RANK() OVER (ORDER BY Balance DESC) AS balance_rank
FROM customers
LIMIT 10;

