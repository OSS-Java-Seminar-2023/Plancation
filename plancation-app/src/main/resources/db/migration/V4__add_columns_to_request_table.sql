ALTER TABLE request
ADD COLUMN(
    requester_id integer,
    approver_id integer
);