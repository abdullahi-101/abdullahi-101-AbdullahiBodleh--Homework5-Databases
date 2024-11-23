-- 1. List the dates and bill totals for customer Bob Crow.
SELECT Date, Total
FROM Bills
WHERE Customer_Name = 'Bob Crow';

-- 2. List the names of all customers whose last name is Smith.
--    List each customer only once in reverse lexicographical order.
SELECT DISTINCT Customer_Name
FROM Customers
WHERE Customer_Name LIKE '%Smith'
ORDER BY Customer_Name DESC;

-- 3. List the names of all customers whose second names begin with 'C'.
--    List each customer only once.
SELECT DISTINCT Customer_Name
FROM Customers
WHERE Customer_Name LIKE '% C%';

-- 4. List the names of all the headwaiters.
SELECT Name
FROM Staff
WHERE Role = 'Headwaiter';

-- 5. List all the details of bills dated February 2016.
SELECT *
FROM Bills
WHERE Date BETWEEN 160201 AND 160229;

-- 6. List the dates the restaurant took money in 2015.
--    List each date only once in sorted order.
SELECT DISTINCT Date
FROM Bills
WHERE Date BETWEEN 150101 AND 151231
ORDER BY Date ASC;
