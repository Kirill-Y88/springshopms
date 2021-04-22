DROP TABLE IF EXISTS products CASCADE;
CREATE TABLE products (id bigserial PRIMARY KEY, name VARCHAR (255), price bigint, promo_id bigint,
 FOREIGN KEY (promo_id) REFERENCES promo (id));
INSERT INTO products (name, price, promo_id) VALUES
('Apple', 15, 1),
('Book', 52, 2),
('Dress', 40, 3),
('Pen', 35, 4),
('Knife', 75, 1);

DROP TABLE IF EXISTS categories CASCADE;
CREATE TABLE categories (id bigserial PRIMARY KEY, name VARCHAR (255));
INSERT INTO categories (name) VALUES
('Fruit'),
('Writing goods'),
('Clothes'),
('Home');

DROP TABLE IF EXISTS comments CASCADE;
CREATE TABLE comments (id bigserial PRIMARY KEY, product_id bigint, user_id bigint, comment VARCHAR (255), FOREIGN KEY (product_id) REFERENCES products (id),
                       FOREIGN KEY (user_id) REFERENCES users (id));
INSERT INTO comments (product_id, user_id, comment) VALUES
(1, 1, 'The best'),
(2, 1, 'Middle'),
(3, 4, 'Good'),
(4, 3, '5 stars');

DROP TABLE IF EXISTS product_category CASCADE;
CREATE TABLE product_category (product_id bigint, category_id bigint, FOREIGN KEY (product_id) REFERENCES products (id),
                               FOREIGN KEY (category_id) REFERENCES categories (id));
INSERT INTO product_category (product_id, category_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 4);

DROP TABLE IF EXISTS product_items CASCADE;
CREATE TABLE product_items (id bigserial PRIMARY KEY, product_id bigint, order_id bigint, price bigint,
 FOREIGN KEY (product_id) REFERENCES products (id),FOREIGN KEY (order_id) REFERENCES orders (id) );
INSERT INTO product_items (product_id, order_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);










