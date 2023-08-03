
SELECT role.title AS title, role.salary AS salary, department.name AS department
FROM role
JOIN department ON role.department = department.id;



-- SELECT *
-- FROM course_names
-- JOIN department ON course_names.department = department.id;

-- SELECT course_names.name AS course_name, department.name AS department_name
-- FROM course_names
-- JOIN department ON course_names.department = department.id;