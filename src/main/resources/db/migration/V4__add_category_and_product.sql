CREATE TABLE store_db.categories (
	id TINYINT auto_increment NOT NULL,
	name varchar(100) NOT NULL,
	CONSTRAINT categories_pk PRIMARY KEY (id)
);

CREATE TABLE store_db.products (
	id BIGINT auto_increment NOT NULL,
	name varchar(100) NOT NULL,
	price DECIMAL(10, 2) DEFAULT 0 NOT NULL,
	category_id TINYINT NOT NULL,
	CONSTRAINT products_pk PRIMARY KEY (id),
	CONSTRAINT products_categories_FK FOREIGN KEY (category_id) REFERENCES store_db.categories(id) On DELETE RESTRICT
);