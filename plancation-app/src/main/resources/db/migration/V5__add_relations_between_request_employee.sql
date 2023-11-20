ALTER TABLE request ADD FOREIGN KEY (requester_id) REFERENCES employee (id);
ALTER TABLE request ADD FOREIGN KEY (approver_id) REFERENCES employee(id);