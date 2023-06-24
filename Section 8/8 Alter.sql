CREATE TABLE information ( 
  info_id SERIAL PRIMARY KEY,
	title VARCHAR (500) NOT NULL,
	person VARCHAR (50) NOT NULL

)


ALTER TABLE information
RENAME TO new_info 


ALTER TABLE new_info
RENAME COLUMN person TO people 


ALTER TABLE new_info 
ALTER COLUMN people DROP NOT NULL 

INSERT INTO new_info (title)
VALUES 
('new_title')