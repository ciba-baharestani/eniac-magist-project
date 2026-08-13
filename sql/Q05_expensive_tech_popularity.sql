SELECT 
    p.product_id,
    p.product_category_name,
    oi.price,
    COUNT(*) AS units_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
WHERE p.product_category_name IN (
        'computers_accessories',
        'electronics',
        'audio',
        'informatica_acessorios',
        'pc_gamer',
        'tablets_impressao_imagem'
   )
GROUP BY p.product_id, p.product_category_name, oi.price
ORDER BY oi.price DESC;
