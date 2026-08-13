SELECT COUNT(*) AS late_orders
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date;
