-- Campaign Performance Analysis
SELECT 
    campaign_id,
    campaign_name,
    SUM(revenue) as total_revenue,
    SUM(cost) as total_cost,
    SUM(revenue - cost) as profit,
    ROUND(SUM(revenue) * 100.0 / NULLIF(SUM(cost), 0), 2) as ROI
FROM gold.fact_sales
JOIN gold.dim_campaigns ON fact_sales.campaign_id = dim_campaigns.campaign_id
GROUP BY campaign_id, campaign_name
ORDER BY ROI DESC;