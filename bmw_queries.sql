-- KPI 1: Total Revenue
SELECT SUM(CAST(Revenue_EUR AS BIGINT)) AS Total_Revenue
FROM bmw_global_sales_2018_2025

-- KPI 2: Best Selling Model
SELECT TOP 1 Model, SUM(Units_Sold) AS Total_Units
FROM bmw_global_sales_2018_2025
GROUP BY Model
ORDER BY Total_Units DESC

-- KPI 3: Average Price Per Model
SELECT Model, AVG(Avg_Price_EUR) AS Avg_Price
FROM bmw_global_sales_2018_2025
GROUP BY Model
ORDER BY Avg_Price DESC