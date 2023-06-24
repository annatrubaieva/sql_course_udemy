INSERT INTO account (username,password,email,created_on)
VALUES 
('Jose', 'password', 'jose@gmail.com',CURRENT_TIMESTAMP) 


INSERT INTO job (job_name)
VALUES 
('Astromaut') 


INSERT INTO job(job_name)
VALUES
('President') 


INSERT INTO account_job (user_id, job_id, hire_date)
VALUES
(1,1,CURRENT_TIMESTAMP)