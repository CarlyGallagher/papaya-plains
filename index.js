const inquirer = require('inquirer');
const cTable = require('inquirer');
const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "root",
    database: "employeeTracker_db"
});

connection.connect(function (err) {
    if (err) {
        console.error("error connecting: " + err.stack);
        return;
    }

});

getJob();

function getJob() {
    inquirer
        .prompt(
            {
                name: 'job',
                type: 'list',
                message: 'Which would you like to do?',
                choices: ['add', 'view', 'update', 'exit'],
            }
        ).then(function ({ job }) {
            switch (job) {
                case 'add':
                    add();
                    break;
                case 'view':
                    view();
                    break;
                case 'update':
                    update();
                    break;
                case 'exit':
                    connection.end()
                    return;
            }

        })
}

function add() {
    inquirer
        .prompt(
            {
                name: "db",
                message: 'Which would you like to add?',
                type: 'list',
                choices: ['department', 'role', 'employee'],
            }
        ).then(function ({ db }) {
            switch (db) {
                case "department":
                    add_department()
                    break;
                case "role":
                    add_role()
                    break;
                case 'employee':
                    add_employee();
                    break;
            }
        })

}