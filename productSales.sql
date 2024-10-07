SELECT c.city_name, p.product_name, ROUND(sum(it.line_total_price), 2) as total FROM city c, customer cu, invoice i, invoice_item it, product p
WHERE c.id = cu.city_id AND i.id =it.invoice_id AND cu.id = i.customer_id AND p.id = it.product_id
GROUP BY c.city_name, p.product_name
ORDER BY tot desc, c.city_name, p.product_name