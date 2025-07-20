CREATE TABLE store_db.profiles (
	id BIGINT NOT NULL,
	bio text NULL,
	phone_number varchar(15) NULL,
	dob Date NULL,
	loyalty_points INT UNSIGNED DEFAULT 0 NULL,
	CONSTRAINT profile_pk PRIMARY KEY (id),
	CONSTRAINT profile_users_FK FOREIGN KEY (id) REFERENCES store_db.users(id) ON DELETE CASCADE
)