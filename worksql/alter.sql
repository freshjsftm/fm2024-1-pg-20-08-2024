CREATE TYPE task_status AS ENUM('done','reject','pending','processing');

CREATE TABLE tasks(
  id serial PRIMARY KEY,
  body varchar(256) NOT NULL,
  user_id int REFERENCES users(id),
  deadline timestamp,
  status task_status
);

INSERT INTO tasks(body,user_id,deadline)
VALUES ('body1', 1, '2024-08-26'),('body2', 11, '2024-08-26'),('body3', 41, '2024-08-26');

SELECT * FROM tasks;