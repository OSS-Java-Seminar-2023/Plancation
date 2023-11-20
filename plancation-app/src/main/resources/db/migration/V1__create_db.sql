CREATE TABLE employee (
  id integer PRIMARY KEY AUTO_INCREMENT,
  username varchar(255),
  mail varchar(255),
  department_id integer,
  request_id integer,
  minimal_vacation_day_id integer,
  total_vacation_days integer,
  bonus_vacation_day_id integer,
  preceding_year_vacation_days integer,
  date_employed timestamp
);
CREATE TABLE department (
  id integer PRIMARY KEY AUTO_INCREMENT,
  name varchar(255),
  manager_id integer
);

CREATE TABLE request (
  id integer PRIMARY KEY AUTO_INCREMENT,
  file_id varchar(255),
  request_time timestamp
);

CREATE TABLE bonus_vacation_day (
  id integer PRIMARY KEY AUTO_INCREMENT,
  description varchar(255),
  number_of_days integer
);

CREATE TABLE file (
  id integer PRIMARY KEY AUTO_INCREMENT,
  title varchar(255),
  path varchar(255)
);

CREATE TABLE minimal_vacation_day (
  id integer PRIMARY KEY AUTO_INCREMENT,
  description varchar(255),
  number_of_days integer
);

CREATE TABLE employee_bonus_vacation_day (
  employee_bonus_vacation_day_id integer,
  bonus_vacation_day_id integer,
  PRIMARY KEY (employee_bonus_vacation_day_id, bonus_vacation_day_id)
);

ALTER TABLE employee ADD FOREIGN KEY (department_id) REFERENCES department (id);

ALTER TABLE employee ADD FOREIGN KEY (request_id) REFERENCES request (id);

ALTER TABLE employee ADD FOREIGN KEY (minimal_vacation_day_id) REFERENCES minimal_vacation_day (id);

ALTER TABLE department ADD FOREIGN KEY (manager_id) REFERENCES employee (id);

ALTER TABLE request ADD FOREIGN KEY (file_id) REFERENCES file (id);

ALTER TABLE employee_bonus_vacation_day ADD FOREIGN KEY (employee_bonus_vacation_day_id) REFERENCES employee (id);

ALTER TABLE employee_bonus_vacation_day ADD FOREIGN KEY (bonus_vacation_day_id) REFERENCES bonus_vacation_day (id);
