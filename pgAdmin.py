import psycopg2 as pg2
conn = pg2.connect(database = 'dvdrental', user = 'postgres', password = 'onabab53')
cur = conn.cursor()
cur.execute('SELECT * FROM payment')
result = cur.fetchmany(5)
print(result)

cur.close()
conn.close()
