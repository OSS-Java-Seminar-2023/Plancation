CREATE TABLE employee_bonusVacDays
(
    employee_id integer NOT NULL,
    bonus_vacation_day_id integer NOT NULL,
    CONSTRAINT PK_Employee_BonusVacDay PRIMARY KEY
    (
        employee_id,
        bonus_vacation_day_id
    ),
    FOREIGN KEY (employee_id) REFERENCES employee(id),
    FOREIGN KEY (bonus_vacation_day_id) REFERENCES bonus_vacation_day (id)
)