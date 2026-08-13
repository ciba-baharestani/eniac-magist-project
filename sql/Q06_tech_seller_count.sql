SELECT COUNT(DISTINCT oi.seller_id) AS tech_seller_count
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
WHERE p.product_category_name IN (
        'computers_accessories',
        'electronics',
        'audio',
        'informatica_acessorios',
        'pc_gamer',
        'tablets_impressao_imagem'
   );
