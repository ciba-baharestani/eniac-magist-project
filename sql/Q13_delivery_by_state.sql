SELECT 
    gc.customer_state,
    ROUND(AVG(julianday(o.order_delivered_customer_date) - julianday(o.order_purchase_timestamp)), 2) AS avg_delivery_days
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN geo_customers gc ON c.customer_zip_code_prefix = gc.zip_code_prefix
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY gc.customer_state
ORDER BY avg_delivery_days DESC;
