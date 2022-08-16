const express = require('express');
const mysql = require('mysql2');
const inquirer = require("inquirer");

const PORT = process.env.PORT || 3001;
const app = express();

app.use(express.urlencoded({ extended: false }));
app.use(express.json());

var connection = mysql.createConnection(
  {
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'employee_trackingDB'
  },
  console.log(`Connected to the employee_trackingDB database.`)
);

function sqlCommandServer() {
  connection.query("SELECT * from department", function (error, res) {
    alldepartments = res.map(dept =>
      ({ name: dept.name, value: dept.id }));
  });

  connection.query("SELECT * from role", function (error, res) {
    allroles = res.map(role =>
      ({ name: role.title, value: role.id }));
  });

  connection.query("SELECT * from employee", function (error, res) {
    allemployees = res.map(employee => ({
      name: `${employee.first_name} ${employee.last_name}`,
      value: employee.id
    }));
  });
}

connection.connect(function (err) {
  if (err) throw err;
  console.log("\nPlease Use This Program to Track your Employees\n");
  startTracker();
  sqlCommandServer();
});

function startTracker() {
  inquirer
    .prompt({
      name: "action",
      type: "list",
      message: "What would you like to do?",
      choices: [
        "View All Employees",
        "Add Employee",
        "Update Employee Role",
        "View All Roles",
        "Add Role",
        "View All Departments",
        "Add Department",
        "Exit"
      ]
    })
    .then(function (answer) {
      switch (answer.action) {
        case "View All Employees":
          viewAllEmployees();
          break;

        case "Add Employee":
          addEmployee();
          break;

        case "Update Employee Role":
          updateEmployeeRole();
          break;

        case "View All Roles":
          viewAllRoles();
          break;

        case "Add Role":
          addRole();
          break;

        case "View All Departments":
          viewAllDepartments();
          break;


        case "Add Department":
          addDepartment();
          break;

        case "Exit":
          connection.end();
          break;
      }
    });
}
