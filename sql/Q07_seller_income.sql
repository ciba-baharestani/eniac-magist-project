SELECT 
    oi.seller_id,
    ROUND(SUM(oi.price * oi.freight_value), 2) AS seller_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
WHERE p.product_category_name IN 
  ('computers_accessories',
        'electronics',
        'audio',
        'informatica_acessorios',
        'pc_gamer',
        'tablets_impressao_imagem')
GROUP BY oi.seller_id
ORDER BY seller_revenue DESC;
