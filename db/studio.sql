DROP TABLE bookings;
DROP TABLE activities;
DROP TABLE members;


CREATE TABLE activities
(
  id SERIAL8 PRIMARY KEY,
  activity_name VARCHAR(255),
  category VARCHAR(255)
);

CREATE TABLE members
(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address VARCHAR(255),
  age INT4
);

CREATE TABLE bookings
(
  id SERIAL8 PRIMARY KEY,
  studio_name VARCHAR(255),
  member_id INT4 REFERENCES members(id) ON DELETE CASCADE,
  activity_id INT4 REFERENCES activities(id) ON DELETE CASCADE
);
