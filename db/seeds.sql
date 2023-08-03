-- Seeds information into the department table
INSERT INTO department (name)
VALUES  ('Sales'),
        ('Engineering'),
        ('Finance'),
        ('Legal');

-- Seeds information into the role table
INSERT INTO role (title, salary, department)
VALUES  ('Sales Lead', '120000', 1),
        ('Salesperson', '80000', 1),
        ('Engineer Lead', '150000', 2),
        ('Software Engineer', '120000', 2),
        ('Account Manager', '165000', 3),
        ('Accountant', '125000', 3),
        ('Legal Team Lead', '250000', 4),
        ('Lawyer', '190000', 4);

-- Seeds information into the employee table
INSERT INTO employee (first_name, last_name)
VALUES  ('Ben', 'Chilling'),
        ('Shawn', 'Davis'),
        ('Ryan', 'Reynolds'),
        ('Andrew', 'Wilson'),
        ('Mac', 'Miller'),
        ('Scooby', 'Doo'),
        ('Shaggy', 'Too-Dope'),
        ('Violent', 'Jay');