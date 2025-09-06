INSERT INTO flavors (name, category, stock_quantity)
VALUES 
('Vanilla', 'Classic', 50),
('Caramel', 'Classic', 30),
('Lavender', 'Dessert', 20),
('Strawberry', 'Fruit', 40);

INSERT INTO cafe (name, city, state)
VALUES 
('Downtown Café', 'Tampa', 'FL'),
('Sunset Coffee', 'Clearwater', 'FL'),
('Oceanview Espresso', 'St. Pete', 'FL');

INSERT INTO orders (cafe_id, flavor_id, quantity, order_date)
VALUES
(1, 1, 10, '2025-09-01'),
(1, 2, 5, '2025-09-01'),
(2, 1, 3, '2025-09-02'),
(2, 4, 7, '2025-09-02'),
(3, 3, 2, '2025-09-03'),
(3, 4, 4, '2025-09-03');
