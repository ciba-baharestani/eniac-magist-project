SELECT r.review_score,
    COUNT(*) AS count_reviews
FROM order_reviews r
JOIN orders o ON r.order_id = o.order_id
WHERE o.order_delivered_customer_date > o.order_estimated_delivery_date
GROUP BY r.review_score
ORDER BY r.review_score ASC;
