CREATE DATABASE chitter;
CREATE DATABASE chitter_test;

CREATE TABLE users (user_id SERIAL PRIMARY KEY, name VARCHAR(60), username VARCHAR(60), email  VARCHAR(60), password VARCHAR(60));

CREATE TABLE peeps (peep_id SERIAL PRIMARY KEY, user_id INTEGER REFERENCES users(user_id), create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, body VARCHAR(280));
