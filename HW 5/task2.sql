-- 1. How much money has the restaurant taken? Rename the output column to 'Income'.
SELECT SUM(Total) AS Income
FROM Bills;

-- 2. How much money did the restaurant take in February 2016? Rename the output column to 'Feb Income'.
SELECT SUM(Total) AS "Feb Income"
FROM Bills
WHERE Date BETWEEN 160201 AND 160229;

-- 3. Calculate the average bill in table 2.
SELECT AVG(Total) AS Avg_Bill
FROM Bills
WHERE Table_No = 2;

-- 4. Find the minimum, maximum, and average seats of tables in the Blue Room.
SELECT MIN(Seats) AS Min, MAX(Seats) AS Max, AVG(Seats) AS Avg
FROM Tables
WHERE Room_No = (SELECT Room_No FROM Rooms WHERE Name = 'Blue Room');

-- 5. Count how many distinct tables are served by waiters 004 and 002.
SELECT COUNT(DISTINCT Table_No) AS Distinct_Tables
FROM Servings
WHERE Waiter_No IN (4, 2);
