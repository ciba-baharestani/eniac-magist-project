SELECT 
    AVG(julianday(o.order_delivered_customer_date) - julianday(o.order_purchase_timestamp)) AS avg_delivery_days
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
WHERE p.product_category_name IN ('computers_accessories',
        'electronics',
        'audio',
        'informatica_acessorios',
        'pc_gamer',
        'tablets_impressao_imagem')
AND o.order_delivered_customer_date IS NOT NULL;
