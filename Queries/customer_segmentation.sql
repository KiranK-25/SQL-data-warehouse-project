-- Customer Segmentation Analysis
SELECT 
    customer_segment,
    COUNT(DISTINCT customer_id) as customer_count,
    SUM(revenue) as total_revenue,
    AVG(revenue) as avg_revenue_per_customer
FROM gold.fact_sales
JOIN gold.dim_customers ON fact_sales.customer_id = dim_customers.customer_id
GROUP BY customer_segment
ORDER BY total_revenue DESC;