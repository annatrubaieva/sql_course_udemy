CREATE TABLE teachers (
  teacher_id SERIAL PRIMARY KEY,
  first_name VARCHAR (50) NOT NULL,
  last_name VARCHAR (50) NOT NULL,
  homeroom_number SMALLINT,
  department VARCHAR (70),
  email VARCHAR (100) UNIQUE, 
  phone BIGINT UNIQUE NOT NULL
)


CREATE TABLE student (
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR (50) NOT NULL,
  last_name VARCHAR (50) NOT NULL,
  homeroom_number SMALLINT,
  email VARCHAR (100) UNIQUE, 
  phone BIGINT UNIQUE NOT NULL,
	graduation_year TIMESTAMP 
)


ALTER TABLE student
ALTER COLUMN graduation_year SET DATA TYPE INTEGER
USING EXTRACT(YEAR FROM graduation_year)::integer; 


ALTER TABLE student
ALTER COLUMN phone SET DATA TYPE VARCHAR (20)


INSERT INTO student 
(first_name, last_name, homeroom_number, phone, graduation_year)
VALUES 
('Mark', 'Watney','5','777-555-1234','2035'
) 

ALTER TABLE teachers
ALTER COLUMN phone SET DATA TYPE VARCHAR (20)

INSERT INTO teachers
(first_name, last_name, homeroom_number, phone, department, email)
VALUES 
('Jonas', 'Salk','5','777-555-4321','Biology','jsalk@school.org'
)