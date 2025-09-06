CREATE TABLE flavors (
    flavor_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50),
    stock_quantity INT DEFAULT 0
);

CREATE TABLE cafes (
    cafe_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    city VARCHAR(50),
    state CHAR(2)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    cafe_id INT REFERENCES cafes(cafe_id),
    flavor_id INT REFERENCES flavors(flavor_id),
    quantity INT NOT NULL,
    order_date DATE DEFAULT CURRENT_DATE
);

