CREATE TABLE users (
	user_id UUID NOT NULL
		PRIMARY KEY
		DEFAULT uuid_generate_v4(),
	username VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	created_at TIMESTAMP NOT NULL
		DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP NOT NULL,
	CONSTRAINT users_username_unique UNIQUE (username),
	CONSTRAINT users_email_unique UNIQUE (email)
);