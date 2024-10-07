SELECT ua.id, ua.first_name, ua.last_name, cu.id, cu.customer_name,count(cu.id)
FROM customer cu, , contact c, user_account ua
WHERE cu.id = c.customer_id AND c.user_account_id = ua.id
GROUP BY ua.id, ua.first_name, ua.last_name, cu.id, cu.customer_name
HAVING COUNT (cu.id) > 1