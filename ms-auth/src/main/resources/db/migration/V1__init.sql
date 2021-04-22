DROP TABLE IF EXISTS roles CASCADE;
CREATE TABLE roles (id bigserial PRIMARY KEY, user_role VARCHAR (255));
INSERT INTO roles (user_role) VALUES
('user'),
('admin'),
('moderator');

DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE users (id bigserial PRIMARY KEY, login VARCHAR (255), password VARCHAR (255), cash_id bigint, role_id bigint,
FOREIGN KEY (cash_id ) REFERENCES cashback (id), FOREIGN KEY (role_id) REFERENCES roles (id));
INSERT INTO users (login,password,cash_id,role_id) VALUES
('Ivan', 'i1', 1, 1),
('Petr', 'p1', 2, 1),
('Alexander', 'a1', 3, 2),
('Donald', 'd1', 4, 3);









