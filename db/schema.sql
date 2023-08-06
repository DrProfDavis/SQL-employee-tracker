-- Drops/Creates the database
DROP DATABASE IF EXISTS tracker_db;
CREATE DATABASE tracker_db;

-- Access database
USE tracker_db;

-- Creates the department table
CREATE TABLE department(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30)
);

-- Creates the role table
CREATE TABLE role (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(30),
    department INT,
    salary DECIMAL,
    FOREIGN KEY (department)
    REFERENCES department(id)
    ON DELETE SET NULL
);

-- Creates the employee table
CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id)
    REFERENCES role(id),
    -- TODO manager key stuff
    FOREIGN KEY (manager_id)
    REFERENCES employee(id)
);