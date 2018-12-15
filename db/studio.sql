DROP TABLE bookings;
DROP TABLE members;
DROP TABLE classes;


CREATE TABLE members
(
  id SERIAL8 PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address VARCHAR(255),
  age INT4
);

CREATE TABLE classes
(
  id SERIAL8 PRIMARY KEY,
  class_name VARCHAR(255),
  category VARCHAR(255)
);

CREATE TABLE bookings
(
  id SERIAL8 PRIMARY KEY,
  studio_name VARCHAR(255),
  member_id INT4 REFERENCES members(id),
  class_id INT4 REFERENCES classes(id)
);
