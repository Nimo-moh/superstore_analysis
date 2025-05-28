-- 1. Total Sales, Profit, and Quantity
SELECT 
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit,
    SUM(Quantity) AS total_quantity
FROM df;

-- 2. Total Sales and Profit by Category
SELECT 
    Category,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM df
GROUP BY Category
ORDER BY total_sales DESC;

-- 3. Top 10 Most Profitable Products
SELECT 
    Product Name,
    ROUND(SUM(Profit), 2) AS total_profit
FROM df
GROUP BY Product Name
ORDER BY total_profit DESC
LIMIT 10;

-- 4. Sales and Profit by Region
SELECT 
    Region,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit
FROM df
GROUP BY Region
ORDER BY total_sales DESC;

-- 5. Top 5 States by Sales
SELECT 
    State,
    ROUND(SUM(Sales), 2) AS total_sales
FROM df
GROUP BY State
ORDER BY total_sales DESC
LIMIT 5;

-- 6. Average Profit by Discount Rate
SELECT 
    Discount,
    ROUND(AVG(Profit), 2) AS avg_profit
FROM df
GROUP BY Discount
ORDER BY Discount;
