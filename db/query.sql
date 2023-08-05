SELECT employee.id AS id, employee.first_name AS first_name, employee.last_name AS last_name, role.title AS title, role.salary AS salary, department.name AS department, CONCAT(manager.first_name,' ',manager.last_name) AS manager
FROM role
LEFT JOIN department ON role.department = department.id
LEFT JOIN employee ON role.id = employee.role_id
LEFT JOIN employee manager ON employee.manager_id = manager.id



-- SELECT *
-- FROM course_names
-- JOIN department ON course_names.department = department.id;

-- SELECT course_names.name AS course_name, department.name AS department_name
-- FROM course_names
-- JOIN department ON course_names.department = department.id;