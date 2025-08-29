-- 1. Retrieve the checkNumber, paymentDate, and amount from the payments table
SELECT checkNumber, paymentDate, amount
FROM payments;

-- 2. Retrieve orderDate, requiredDate, and status of orders that are 'In Process'
--    Sort the results in descending order of orderDate
SELECT orderDate, requiredDate, status
FROM orders
WHERE status = 'In Process'
ORDER BY orderDate DESC;

-- 3. Display firstName, lastName, and email of employees whose job title is 'Sales Rep'
--    Order them in descending order of employeeNumber
SELECT firstName, lastName, email
FROM employees
WHERE jobTitle = 'Sales Rep'
ORDER BY employeeNumber DESC;

-- 4. Retrieve all the columns and records from the offices table
SELECT *
FROM offices;

-- 5. Fetch productName and quantityInStock from products table
--    Sort by buyPrice in ascending order and limit to 5 records
SELECT productName, quantityInStock
FROM products
ORDER BY buyPrice ASC
LIMIT 5;
