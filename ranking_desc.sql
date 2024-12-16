WITH a AS (

SELECT seller_id, COUNT(*) AS count_sellers
FROM `secondhand-luxury.raw.Fact_Sales`
GROUP BY seller_id
HAVING COUNT(*) > 1

)

SELECT * 
FROM a
ORDER BY count_sellers DESC;

WITH b AS (
SELECT product_id, COUNT(*) AS count_products
FROM `secondhand-luxury.raw.Dim_Product`
GROUP BY product_id
HAVING COUNT(*) > 1

)

SELECT *
FROM b
ORDER BY count_products DESC;