-- Key KPI Queries for Dashboard
SELECT 
    DATE_TRUNC('month', order_date) as month,
    SUM(revenue) as monthly_revenue,
    COUNT(DISTINCT order_id) as total_orders,
    COUNT(DISTINCT customer_id) as unique_customers
FROM gold.fact_sales
GROUP BY month
ORDER BY month DESC;