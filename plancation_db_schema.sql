CREATE TABLE `employee` (
  `employee_id` long PRIMARY KEY AUTO_INCREMENT,
  `employee_role` integer,
  `employee_username` varchar(255),
  `employee_department` integer,
  `employee_request` integer,
  `employee_file` integer,
  `employee_total_vacation_days` integer,
  `employee_bonus_vacation_days` integer
);

CREATE TABLE `department` (
  `department_id` long PRIMARY KEY AUTO_INCREMENT,
  `department_name` varchar(255),
  `department_manager` integer,
  `department_vacation_days_num` integer
);

CREATE TABLE `request` (
  `request_id` long PRIMARY KEY AUTO_INCREMENT,
  `request_type` integer,
  `request_file_path` varchar(255),
  `request_status` enum,
  `request_time_published` timestamp,
  `request_published_by` varchar(255),
  `request_approved_by` varchar(255)
);

CREATE TABLE `request_type` (
  `request_type_id` integer PRIMARY KEY AUTO_INCREMENT,
  `request_type_description` enum
);

CREATE TABLE `bonus_vacation_day` (
  `bonus_vacation_day_id` integer PRIMARY KEY AUTO_INCREMENT,
  `bonus_vacation_day_name` enum
);

CREATE TABLE `state_holiday` (
  `state_holiday_id` integer PRIMARY KEY AUTO_INCREMENT,
  `state_holiday_name` enum
);

CREATE TABLE `role` (
  `role_id` integer PRIMARY KEY AUTO_INCREMENT,
  `role_name` enum
);

CREATE TABLE `request_status` (
  `request_status_id` integer PRIMARY KEY AUTO_INCREMENT,
  `request_status_description` enum
);

CREATE TABLE `file` (
  `file_id` integer PRIMARY KEY AUTO_INCREMENT,
  `file_title` varchar(255),
  `file_path` varchar(255)
);

ALTER TABLE `employee` ADD FOREIGN KEY (`employee_department`) REFERENCES `department` (`department_id`);

ALTER TABLE `employee` ADD FOREIGN KEY (`employee_role`) REFERENCES `role` (`role_id`);

CREATE TABLE `employee_bonus_vacation_day` (
  `employee_employee_bonus_vacation_days` integer,
  `bonus_vacation_day_bonus_vacation_day_id` integer,
  PRIMARY KEY (`employee_employee_bonus_vacation_days`, `bonus_vacation_day_bonus_vacation_day_id`)
);

ALTER TABLE `employee_bonus_vacation_day` ADD FOREIGN KEY (`employee_employee_bonus_vacation_days`) REFERENCES `employee` (`employee_bonus_vacation_days`);

ALTER TABLE `employee_bonus_vacation_day` ADD FOREIGN KEY (`bonus_vacation_day_bonus_vacation_day_id`) REFERENCES `bonus_vacation_day` (`bonus_vacation_day_id`);


ALTER TABLE `request` ADD FOREIGN KEY (`request_id`) REFERENCES `employee` (`employee_request`);

ALTER TABLE `request` ADD FOREIGN KEY (`request_type`) REFERENCES `request_type` (`request_type_id`);

ALTER TABLE `request` ADD FOREIGN KEY (`request_status`) REFERENCES `request_status` (`request_status_id`);

ALTER TABLE `file` ADD FOREIGN KEY (`file_id`) REFERENCES `employee` (`employee_file`);

ALTER TABLE `file` ADD FOREIGN KEY (`file_id`) REFERENCES `request` (`request_file_path`);
