-- View sample data
SELECT * FROM superstore LIMIT 5;

-- Filter Technology category
SELECT *
FROM superstore
WHERE Category = 'Technology'
LIMIT 5;

-- Top 5 sales
SELECT *
FROM superstore
ORDER BY Sales DESC
LIMIT 5;

-- Total sales by category
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category;

-- Categories with sales > 100000
SELECT Category, SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
HAVING SUM(Sales) > 100000;

-- Orders in January 2011
SELECT *
FROM superstore
WHERE Order_Date BETWEEN '2011-01-01' AND '2011-01-31'
LIMIT 5;

-- Customer name search
SELECT *
FROM superstore
WHERE Customer_Name LIKE '%Smith%'
LIMIT 5;
