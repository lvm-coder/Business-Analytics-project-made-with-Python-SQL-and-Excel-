-- Walmart Retail Sales Analytics
-- These queries are also run inside the notebook using SQLite.

-- 1. Average weekly sales by store type
SELECT Type,
       ROUND(AVG(Weekly_Sales), 2) AS Avg_Weekly_Sales
FROM sales
GROUP BY Type
ORDER BY Avg_Weekly_Sales DESC;

-- 2. Holiday vs non-holiday weekly sales
SELECT IsHoliday,
       ROUND(AVG(Weekly_Sales), 2) AS Avg_Weekly_Sales
FROM sales
GROUP BY IsHoliday;

-- 3. Top 10 stores by average weekly sales
SELECT Store,
       ROUND(AVG(Weekly_Sales), 2) AS Avg_Weekly_Sales
FROM sales
GROUP BY Store
ORDER BY Avg_Weekly_Sales DESC
LIMIT 10;

-- 4. Average sales by year
SELECT Year,
       ROUND(AVG(Weekly_Sales), 2) AS Avg_Weekly_Sales
FROM sales
GROUP BY Year
ORDER BY Year;

-- 5. Average sales by month
SELECT Month,
       ROUND(AVG(Weekly_Sales), 2) AS Avg_Weekly_Sales
FROM sales
GROUP BY Month
ORDER BY Month;
