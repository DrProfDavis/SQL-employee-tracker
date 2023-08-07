-- Query for viewAllEmployees
SELECT employee.id AS id, employee.first_name AS first_name, employee.last_name AS last_name, role.title AS title, role.salary AS salary, department.name AS department, CONCAT(manager.first_name,' ',manager.last_name) AS manager
FROM role
LEFT JOIN department ON role.department = department.id
LEFT JOIN employee ON role.id = employee.role_id
LEFT JOIN employee manager ON employee.manager_id = manager.id


-- -- Query for viewAllDepartments
-- SELECT department.id AS id, department.name AS department
-- FROM department


-- -- Query for viewAllRoles
-- SELECT role.id AS id, role.title AS title, department.name AS department, role.salary AS salary
-- FROM role
-- LEFT JOIN department ON role.department = department.id