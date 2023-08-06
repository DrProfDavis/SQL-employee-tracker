// Import and require mysql2
const inquirer  = require('inquirer');
const mysql = require('mysql2');

// Connect to database
const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'root',
        database: 'tracker_db'
    },
    console.log(`Connected to the tracker_db database.`)
);

// Displays table of all departments
function viewAllDepartments() {
    const sql = `SELECT department.id AS id, department.name AS department
    FROM department`;

    db.query(sql, (err, result) => {
        if (err) throw err;
        console.table(result)
    });
}

// Displays table of all roles and salary
function viewAllRoles() {
    const sql = `SELECT role.id AS id, role.title AS title, department.name AS department, role.salary AS salary
    FROM role
    LEFT JOIN department ON role.department = department.id`;

    db.query(sql, (err, result) => {
        if (err) throw err;
        console.table(result)
    });
}

// Displays table of all employees and their information
function viewAllEmployees() {
    const sql = `SELECT employee.id AS id, employee.first_name AS first_name, employee.last_name AS last_name, role.title AS title, role.salary AS salary, department.name AS department, CONCAT(manager.first_name,' ',manager.last_name) AS manager
    FROM role
    LEFT JOIN department ON role.department = department.id
    LEFT JOIN employee ON role.id = employee.role_id
    LEFT JOIN employee manager ON employee.manager_id = manager.id`;

    db.query(sql, (err, result) => {
        if (err) throw err;
        console.table(result)
    });
}


function init() {
    inquirer.prompt([
        {
            type: "list",
            name: "choice",
            message: "Choose an option",
            choices: [
                "view all departments",
                "view all roles",
                "view all employees",
                "add a department",
                "add a role",
                "add an employee",
                "update an employee role"
            ]
        }
    ]) .then(response => {
        console.log(response)
        switch(response.choice){
            case "view all departments":
                viewAllDepartments();
                break;
            case "view all roles":
                viewAllRoles();
                break;
            case "view all employees":
                viewAllEmployees();
                break;
            case "add a department":
                //code to be executed
                break;
            case "add a role":
                //code to be executed
                break;
            case "view all employees":
                //code to be executed
                break;
            case "update an employee role":
                //code to be executed
                break;
        }
    })

    // viewAllEmployees()
}
init()