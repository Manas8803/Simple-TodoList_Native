-- name: GetAllTasks :one
SELECT * FROM tasks;

-- name: GetTaskByID :one
SELECT * FROM tasks WHERE id = $1;

-- name: CreateTask :one
INSERT INTO tasks (title, description, deadline, is_completed)
VALUES ($1, $2, $3, $4)
RETURNING id;

-- name: UpdateTask :exec
UPDATE tasks
SET title = $2, description = $3, deadline = $4, is_completed = $5
WHERE id = $1;

-- name: DeleteTask :exec
DELETE FROM tasks WHERE id = $1;
