LOAD DATA LOCAL INFILE 'C:/Users/eshwa/Downloads/customer churn analysis.csv'
INTO TABLE customers
CHARACTER SET utf8mb4
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
    CustomerId,
    Surname,
    CreditScore,
    Geography,
    Gender,
    Age,
    Tenure,
    Balance,
    NumOfProducts,
    `Credit Card`,
    IsActiveMember,
    EstimatedSalary,
    Churned,
    Complain,
    `Satisfaction Score`,
    `Card Type`,
    `Point Earned`,
    `Age Group`,
    `credit score group`,
    `Balance Group`
);