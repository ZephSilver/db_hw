CREATE TABLE IF NOT EXISTS department (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE IF NOT EXISTS employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    supervisor_id INT,
    FOREIGN KEY (department_id) REFERENCES department(id),
    FOREIGN KEY (supervisor_id) REFERENCES employee(id)
);
