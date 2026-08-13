SELECT 
    order_id,
    julianday(order_delivered_customer_date) - julianday(order_purchase_timestamp) AS delivery_days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;
