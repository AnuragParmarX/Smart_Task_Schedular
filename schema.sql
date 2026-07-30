CREATE TABLE users(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255)
);

CREATE TABLE categories(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100)
);

CREATE TABLE tasks(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(255),
    description TEXT,
    priority VARCHAR(20),
    status VARCHAR(20),
    due_date DATE,
    category_id BIGINT,
    user_id BIGINT
);

CREATE TABLE task_dependencies(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    task_id BIGINT,
    depends_on BIGINT
);

CREATE TABLE activity_logs(
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    action VARCHAR(255),
    action_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
