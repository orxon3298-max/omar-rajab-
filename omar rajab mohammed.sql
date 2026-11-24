use sales;

-- Q1;
SELECT *
FROM orders;

-- Q2;

SELECT
    o.orderNumber AS OrderID,
    o.customerNumber AS CustomerID,
    SUM(od.quantityOrdered * od.priceEach) AS Sales
FROM orders o
JOIN orderdetails od
    ON o.orderNumber = od.orderNumber
GROUP BY o.orderNumber, o.customerNumber;

-- Q3;
SELECT
    o.orderNumber,
    SUM(od.quantityOrdered * od.priceEach) AS Sales
FROM orders o
JOIN orderdetails od
    ON o.orderNumber = od.orderNumber
GROUP BY o.orderNumber
HAVING SUM(od.quantityOrdered * od.priceEach) > 500;

-- Q4;

SELECT *
FROM orderdetails
WHERE quantityOrdered = 1;

-- Q5;

SELECT
    o.orderNumber, c.country,
    SUM(od.quantityOrdered * od.priceEach) AS Sales
FROM orders o
JOIN customers c
    ON o.customerNumber = c.customerNumber
JOIN orderdetails od
    ON o.orderNumber = od.orderNumber
WHERE c.country = 'USA'
GROUP BY o.orderNumber, c.country
HAVING SUM(od.quantityOrdered * od.priceEach) > 300;

-- Q6;
SELECT DISTINCT country
FROM customers;

-- Q7;



-- Q9
SELECT *
FROM orders
WHERE shippedDate IS NULL;

-- Q10
SELECT
    orderNumber,
    productCode,
    quantityOrdered AS Quantity,
    priceEach AS UnitPrice,
    quantityOrdered * priceEach AS Sales
FROM orderdetails;

-- Q12
SELECT *
FROM products
WHERE productLine IN ('Furniture', 'Technology');

-- Q14
SELECT *
FROM orders
WHERE orderDate BETWEEN '2023-01-01' AND '2023-12-31';

-- Q18
SELECT distinct orderNumber, productCode,
    quantityOrdered,
    priceEach,
    quantityOrdered * priceEach AS Sales
FROM orderdetails
WHERE quantityOrdered * priceEach > 1000;


