import cx_Oracle

username = 'Prac'
password = '139'
dsn = 'localhost/xe'

connection = cx_Oracle.connect(username, password, dsn)
cursor = connection.cursor()

# Запит 1 - Категорія(предметна область) - число. Вивести категорію та кількість лауретів цієї області.
query = '''
Select category_name, count(*)
From categories inner join 
Laureat USING(category_name)
Group By category_name
'''

print('Запит 1')
cursor.execute(query)
for row in cursor:
    print(row)


print('\n\n')

# Запит 2 - Країна народження - відсоток лауреатів цієї країни відносно решти.
query = '''
SELECT birth_country_name AS event, ROUND(COUNT(birth_country_name) * 100 / (SELECT COUNT(*) FROM Laureat), 2)
AS percentage
FROM Birth inner join birth_city
using(birth_city_name)
join birth_country
using(birth_country_name)
GROUP BY birth_country_name
'''

print('Запит 2')
cursor.execute(query)
for row in cursor:
    print(row)
print('\n\n')

# Запит 3 -  Динаміка кількості лауреатів по годах.
query = '''
SELECT reward_year, COUNT(*) 
from Laureat
Group by reward_year
'''

print('Запит 3')
cursor.execute(query)
for row in cursor:
    print(row)

cursor.close()
connection.close()
