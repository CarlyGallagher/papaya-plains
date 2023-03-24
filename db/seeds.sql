
USE employeesDB;

INSERT INTO department (name)
VALUES ("Sales");
INSERT INTO department (name)
VALUES ("Accounting");
INSERT INTO department (name)
VALUES ("Customer Service");
INSERT INTO department (name)
VALUES ("Human Resources");
INSERT INTO department (name)
VALUES ("Quality and Reassurance");

INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Head Accountant", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Customer Service Rep", 120000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead of Human Resources", 125000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Head of Quality and Reassurance", 250000, 4);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Meredith", "Palmer", 1, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Creed", "Braton", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Angela", "Martin", 3, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Oscar", "Martinez", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Dwight", "Schrute", 5, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Jim", "Halpert", 2, null);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Pamela", "Halpert", 4, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Toby", "Flenderson", 1, 2);