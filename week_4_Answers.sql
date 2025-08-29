-- Question 1
-- Show the total payment amount for each payment date
-- Sort by payment date in descending order and show only top 5 latest payment dates
SELECT paymentDate, SUM(amount) AS total_payment
FROM payments
GROUP BY paymentDate
ORDER BY paymentDate DESC
LIMIT 5;


-- Question 2
-- Find the average credit limit of each customer
-- Group by customer name and country
SELECT customerName, country, AVG(creditLimit) AS average_credit_limit
FROM customers
GROUP BY customerName, country;


-- Question 3
-- Find the total price of products ordered
-- total price = quantityOrdered * priceEach
-- Group by product code and quantity ordered
SELECT productCode, quantityOrdered,
       SUM(quantityOrdered * priceEach) AS total_price
FROM orderdetails
GROUP BY productCode, quantityOrdered;


-- Question 4
-- Find the highest payment amount for each check number
SELECT checkNumber, MAX(amount) AS highest_payment
FROM payments
GROUP BY checkNumber;
