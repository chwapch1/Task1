select id, product_name, pcount from
	(
    select product.id, product.product_name, count(purchase.product_id) as pcount from product
    	join purchase on product.id = purchase.product_id
    group by product.id, product.product_name
	) as prod_count
order by pcount desc
limit 3;