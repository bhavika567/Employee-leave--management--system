CREATE TABLE department (
  id INT(11) NOT NULL AUTO_INCREMENT,
  department VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO department (id, department) VALUES
(3, 'PR Department'),
(4, 'Sales Department'),
(5, 'HR Department');

CREATE TABLE employee (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  mobile VARCHAR(15) NOT NULL,
  password VARCHAR(20) NOT NULL,
  department_id INT(11) NOT NULL,
  address VARCHAR(2000) NOT NULL,
  birthday DATE NOT NULL,
  role INT(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO employee (id, name, email, mobile, password, department_id, address, birthday, role) VALUES
(2, 'Vishal1', 'vishal@gmail.com', '123456789', '123', 3, 'Delhi', '2020-10-31', 2),
(3, 'ad', 'admin@gmail.com', '', 'admin', 4, '', '0000-00-00', 1),
(4, 'Sumit', 'sumit@gmail.com', '1234567890', '123', 3, 'Delhi', '2020-12-31', 2);

CREATE TABLE leave_requests (
  id INT(11) NOT NULL AUTO_INCREMENT,
  employee_id INT(11) NOT NULL,
  leave_id INT(11) NOT NULL,
  leave_from DATE NOT NULL,
  leave_to DATE NOT NULL,
  leave_description TEXT NOT NULL,
  leave_status INT(11) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO leave_requests (id, employee_id, leave_id, leave_from, leave_to, leave_description, leave_status) VALUES
(2, 2, 3, '2020-01-01', '2020-01-02', 'Not well', 1),
(3, 4, 2, '2020-01-01', '2020-01-02', 'test', 3),
(4, 4, 3, '2020-01-02', '2020-01-03', 'test desc', 2);

CREATE TABLE leave_type (
  id INT(11) NOT NULL AUTO_INCREMENT,
  leave_type VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB;

INSERT INTO leave_type (id, leave_type) VALUES
(2, 'Casual'),
(3, 'Earned'),
(4, 'Sick');
