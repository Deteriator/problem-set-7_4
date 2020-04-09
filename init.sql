CREATE TABLE users(
id SERIAL PRIMARY KEY,
name varchar(50) NOT NULL,
email text NOT NULL,
password text NOT NULL
);

CREATE TABLE tasks(
id SERIAL PRIMARY KEY,
user_id int REFERENCES users(id),
task_name text ,
task_description text ,
due_date date ,
is_complete boolean DEFAULT false NOT NULL
) ;