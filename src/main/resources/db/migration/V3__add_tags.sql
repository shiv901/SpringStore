CREATE TABLE store_db.tags (
	id int auto_increment NOT NULL,
	name varchar(100) NOT NULL,
	CONSTRAINT tags_pk PRIMARY KEY (id)
);

CREATE TABLE store_db.user_tags (
	user_id BIGINT NOT NULL,
	tag_id int NOT NULL,
	CONSTRAINT user_tags_pk_1 PRIMARY KEY (user_id, tag_id),
	CONSTRAINT user_tags_users_FK FOREIGN KEY (user_id) REFERENCES store_db.users(id) ON DELETE CASCADE,
	CONSTRAINT user_tags_tags_FK FOREIGN KEY (tag_id) REFERENCES store_db.tags(id) ON DELETE CASCADE
);