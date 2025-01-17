SELECT
    TO_CHAR(TO_DATE(dim_date.date, 'DD/MM/YYYY'), 'FMMonth') AS month,
    ROUND(CAST(SUM(orders.product_quantity * dim_products.sale_price)AS NUMERIC), 2) AS revenue
FROM
    orders
JOIN
    dim_products ON orders.product_code = dim_products.product_code
JOIN
    dim_date ON orders.order_date = dim_date.date
WHERE
    dim_date.year = 2022
GROUP BY
    TO_CHAR(TO_DATE(dim_date.date, 'DD/MM/YYYY'), 'FMMonth')
ORDER BY
    revenue DESC
LIMIT 1;
