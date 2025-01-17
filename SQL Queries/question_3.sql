SELECT
    dim_stores.store_type,
    ROUND(CAST(SUM(orders.product_quantity * dim_products.sale_price) AS NUMERIC), 2) AS revenue
FROM
    orders
JOIN
    dim_stores ON orders.store_code = dim_stores.store_code
JOIN
    dim_products ON orders.product_code = dim_products.product_code
WHERE
    dim_stores.country_code = 'DE'
    AND EXTRACT(YEAR FROM TO_DATE(orders.order_date, 'DD/MM/YYYY')) = 2022
GROUP BY
    dim_stores.store_type
ORDER BY
    revenue DESC
LIMIT 1;
