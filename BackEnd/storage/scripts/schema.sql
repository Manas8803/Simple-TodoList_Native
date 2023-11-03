CREATE TABLE tasks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    deadline DATE,
    is_completed BOOLEAN DEFAULT false
);
