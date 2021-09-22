CREATE TABLE adverts (
  id INTEGER PRIMARY KEY,
  name TEXT,
  category_name TEXT
);

CREATE TABLE costs (
  id INTEGER PRIMARY KEY,
  cost INTEGER
);

SELECT adverts.category_name, AVG(costs.cost) AS avg FROM costs
LEFT JOIN adverts ON adverts.id = costs.id
GROUP BY adverts.category_name
HAVING avg < 500;
