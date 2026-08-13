WITH tech AS (
    SELECT COUNT(*) AS tech_count
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
),
total AS (
    SELECT COUNT(*) AS total_count
    FROM order_items
)
SELECT 
    tech.tech_count,
    total.total_count,
    ROUND(100.0 * tech.tech_count / total.total_count, 2) AS tech_percentage
FROM tech, total;
