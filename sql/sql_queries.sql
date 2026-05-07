-- TOTAL REVENUE AND PROFIT

SELECT 
    SUM(sales) AS total_revenue,
    SUM(profit) AS total_profit
FROM ecommerce_sales;



-- TOP PRODUCTS BY SALES

SELECT 
    product_name,
    SUM(sales) AS total_sales
FROM ecommerce_sales
GROUP BY product_name
ORDER BY total_sales DESC;



-- CATEGORY PROFITABILITY

SELECT 
    category,
    ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM ecommerce_sales
GROUP BY category
ORDER BY total_profit DESC;



-- MONTHLY SALES TREND

SELECT 
    month,
    month_name,
    ROUND(SUM(sales)::numeric, 2) AS monthly_sales
FROM ecommerce_sales
GROUP BY month, month_name
ORDER BY month;



-- REGIONAL SALES PERFORMANCE

SELECT 
    region,
    ROUND(SUM(sales)::numeric, 2) AS total_sales,
    ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM ecommerce_sales
GROUP BY region
ORDER BY total_sales DESC;



-- TOP 5 PRODUCTS BY PROFIT

SELECT 
    product_name,
    ROUND(SUM(profit)::numeric, 2) AS total_profit
FROM ecommerce_sales
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 5;
