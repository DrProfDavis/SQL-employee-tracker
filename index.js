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

// Create a movie
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
        // if else or switch statement
        // if you choose "update an employee role"
    })

    // viewAllEmployees()
}
init()