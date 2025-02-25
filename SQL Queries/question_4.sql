CREATE VIEW SalesSummary AS
SELECT
    dim_stores.store_type,
    ROUND(CAST(SUM(orders.product_quantity * dim_products.sale_price) AS NUMERIC), 2) AS total_sales,
    ROUND(CAST(
        (SUM(orders.product_quantity * dim_products.sale_price) / 
         (SELECT SUM(orders.product_quantity * dim_products.sale_price) 
          FROM orders
          JOIN dim_products ON orders.product_code = dim_products.product_code)
        ) AS NUMERIC) * 100, 
        2
    ) AS percentage_of_total_sales,
    COUNT(orders.index) AS count_of_orders
FROM
    orders
JOIN
    dim_stores ON orders.store_code = dim_stores.store_code
JOIN
    dim_products ON orders.product_code = dim_products.product_code
GROUP BY
    dim_stores.store_type;
