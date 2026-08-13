SELECT DISTINCT product_category_name
FROM products
WHERE product_category_name LIKE '%tech%'
   OR product_category_name IN ('computers_accessories',
        'electronics',
        'audio',
        'informatica_acessorios',
        'pc_gamer',
        'tablets_impressao_imagem');
