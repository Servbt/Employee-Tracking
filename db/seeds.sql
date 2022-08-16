
INSERT INTO department (name)
VALUES ("Sales");

INSERT INTO department (name)
VALUES ("Engineering");

INSERT INTO department (name)
VALUES ("Finance");

INSERT INTO department (name)
VALUES ("Legal");

-- roles
INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1 );

INSERT INTO role (title, salary, department_id)
VALUES ("Salesperson", 80000, 1 );

INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 2 );

INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 120000, 2 );

INSERT INTO role (title, salary, department_id)
VALUES ("Account Manager", 155000, 3 );

INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 125000, 3 );

INSERT INTO role (title, salary, department_id)
VALUES ("Legal Team Lead", 250000, 4 );

INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 190000, 4 );


-- employees 
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Justin", "Smith", 1);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Alex", "Chasez", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Chris", "Kirkpatrick", 3);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Joey", "Fatone", 4);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Lance", "Bass", 5);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Britney", "Spears", 6);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Christina", "Aguilera", 7);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Nick", "Carter", 8);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("AJ", "McLean", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Howie", "Dorough", 4);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Kevin", "Richardson", 6);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Brian", "Littrell", 8);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Melanie", "Brown", 2);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Melanie", "Chisholm", 4);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Emma", "Bunton", 6);
INSERT INTO employee (first_name, last_name, role_id)
VALUES ("Victoria", "Beckham", 8);