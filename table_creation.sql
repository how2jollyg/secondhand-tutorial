---DIM SELLER---

select `seller_dim_id`,
    `seller_id`,
    `seller_username`,
    `seller_country`,
    `seller_products_sold`,
    `seller_num_products_listed`,
    `seller_community_rank`,
    `seller_num_followers`,
    `seller_pass_rate`,
    `usually_ships_within`
from `secondhand-luxury`.`raw`.`Dim_Seller`;

---DIM BRAND---

select `brand_dim_id`,
    `brand_id`,
    `brand_name`
from `secondhand-luxury`.`raw`.`Dim_Brand`;

---DIM PRODUCT---

select `product_dim_id`,
    `product_id`,
    `product_type`,
    `product_name`,
    `product_description`,
    `product_keywords`,
    `product_gender_target`,
    `product_category`,
    `product_season`,
    `product_condition`,
    `brand_id`,
    `product_material`,
    `product_color`
from `secondhand-luxury`.`raw`.`Dim_Product`;

---DIM WAREHOUSE--- 

select `warehouse_dim_id`,
    `warehouse_name`
from `secondhand-luxury`.`raw`.`Dim_Warehouse`;

---FACT SALES---

select `product_id`,
    `seller_id`,
    `sold`,
    `reserved`,
    `available`,
    `in_stock`,
    `should_be_gone`,
    `product_like_count`,
    `price_usd`,
    `seller_price`,
    `seller_earning`,
    `has_cross_border_fees`,
    `buyers_fees`,
    `product_type`,
    `product_name`,
    `product_description`,
    `product_keywords`,
    `product_gender_target`,
    `product_category`,
    `product_season`,
    `product_condition`,
    `product_material`,
    `product_color`,
    `brand_name`,
    `seller_username`,
    `seller_country`,
    `seller_products_sold`,
    `seller_num_products_listed`,
    `seller_community_rank`,
    `seller_num_followers`,
    `seller_pass_rate`
from `secondhand-luxury`.`raw`.`Fact_Sales`;


