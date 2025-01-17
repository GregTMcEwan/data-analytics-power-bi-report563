SELECT
    dim_products.category,
    ROUND(CAST(SUM((dim_products.sale_price - dim_products.cost_price) * orders.product_quantity) AS ), 2) AS total_profit
FROM
    orders
JOIN
    dim_stores ON orders.store_code = dim_stores.store_code
JOIN
    dim_products ON orders.product_code = dim_products.product_code
WHERE
    dim_stores.country_region = 'Wiltshire'
GROUP BY
    dim_products.category
ORDER BY
    total_profit DESC;
