SELECT seller_id, COUNT(*) AS count
FROM `secondhand-luxury.raw.Fact_Sales`
GROUP BY seller_id
HAVING COUNT(*) > 1;

SELECT product_id, COUNT(*) AS count
FROM `secondhand-luxury.raw.Dim_Product`
GROUP BY product_id
HAVING COUNT(*) > 1;

SELECT *
FROM `secondhand-luxury.raw.Dim_Brand`
WHERE brand_id IS NULL;