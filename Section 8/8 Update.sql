UPDATE account
SET last_login = CURRENT_TIMESTAMP 


UPDATE account
SET last_login = created_on 


UPDATE account_job 
SET hire_date = account.created_on
FROM account
WHERE account_job.user_id = account_job.user_id


UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, created_on, last_login