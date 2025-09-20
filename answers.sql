-- Question 1: Get firstName, lastName, email, and officeCode of all employees
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Question 2: Get productName, productVendor, and productLine from products
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Question 3: Get orderDate, shippedDate, status, and customerNumber for first 10 orders
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
LIMIT 10;

-- Alternative: This might be more intuitive since we're primarily interested in orders
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM orders o
RIGHT JOIN customers c ON o.customerNumber = c.customerNumber
LIMIT 10;