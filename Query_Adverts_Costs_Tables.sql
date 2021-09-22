SELECT adverts.category_name, AVG(costs.cost) AS avg FROM costs
LEFT JOIN adverts ON adverts.id = costs.id
GROUP BY adverts.category_name
HAVING avg < 500;
