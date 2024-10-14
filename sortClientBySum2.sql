select client.id, client_name, client_surname, sum(price) from client 
	join purchase on client.id = purchase.client_id
	join product on purchase.product_id = product.id
group by client.id
order by sum(price) desc;