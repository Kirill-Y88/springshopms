DROP TABLE IF EXISTS storage CASCADE;
CREATE TABLE storage (id bigserial PRIMARY KEY, product_id bigint, amount bigint, FOREIGN KEY (product_id) REFERENCES products (id));
INSERT INTO storage (product_id, amount) VALUES
(1, 29),
(2, 45),
(3, 1),
(4, 108),
(5, 3);








