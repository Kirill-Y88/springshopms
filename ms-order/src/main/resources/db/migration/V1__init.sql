DROP TABLE IF EXISTS orders CASCADE;
CREATE TABLE orders (id bigserial PRIMARY KEY, user_id bigint, price bigint, create_date timestamp default current_timestamp,
                     FOREIGN KEY (user_id) REFERENCES users (id));
INSERT INTO orders (user_id) VALUES
(1),
(2),
(3),
(4),
(1);

DROP TABLE IF EXISTS order_status CASCADE;
CREATE TABLE order_status(id bigserial PRIMARY KEY, order_id bigint, order_status VARCHAR (255), create_date timestamp default current_timestamp,
                          FOREIGN KEY (order_id) REFERENCES orders (id));
INSERT INTO order_status (order_id, order_status) VALUES
(1, 'In the cart'),
(2, 'Paid'),
(3, 'Delivered'),
(4, 'Returned'),
(5, 'Paid');








