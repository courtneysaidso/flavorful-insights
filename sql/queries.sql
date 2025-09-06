-- Top-selling flavors
SELECT f.name AS flavor, SUM(o.quantity) AS total_sold
FROM orders o
JOIN flavors f ON o.flavor_id = f.flavor_id
GROUP BY f.name
ORDER BY total_sold DESC;

-- Low-stock flavors
SELECT name, stock_quantity
FROM flavors
WHERE stock_quantity < 25;

-- Monthly sales by flavor
SELECT f.name AS flavor, DATE_TRUNC('month', o.order_date) AS month, SUM(o.quantity) AS total_sold
FROM orders o
JOIN flavors f ON o.flavor_id = f.flavor_id
GROUP BY f.name, month
ORDER BY month, total_sold DESC;

-- Check for duplicates
SELECT name, category, COUNT(*)
FROM flavors
GROUP BY name, category
HAVING COUNT(*) >1;

