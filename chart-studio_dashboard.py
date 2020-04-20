import cx_Oracle
import chart_studio
import plotly.graph_objects as go
import chart_studio.plotly as py
import chart_studio.dashboard_objs as dashboard
import re

def get_id(url):
    return re.findall("~[A-z.]+/[0-9]+", url)[0][1:].replace('/', ':')

chart_studio.tools.set_credentials_file(username='olegkasianovkyi', api_key='K4SsCXaoXvug7g4LEyhn')

username = "Prac"
password = "139"
database = "localhost/xe"
connection = cx_Oracle.connect(username, password, database)
cursor = connection.cursor()

query = """
Select category_name, count(*)
From categories inner join 
Laureat USING(category_name)
Group By category_name
"""
cursor.execute(query)

x = list()
y = list()
for row in cursor:
    x.append(row[0])
    y.append(row[1])
bar = go.Bar(x = x, y = y)
bar = py.plot([bar],auto_open = True)

query = """
SELECT birth_country_name AS event, ROUND(COUNT(birth_country_name) * 100 / (SELECT COUNT(*) FROM Laureat), 2)
AS percentage
FROM Birth inner join birth_city
using(birth_city_name)
join birth_country
using(birth_country_name)
GROUP BY birth_country_name
"""
cursor.execute(query)

x = list()
y = list()
for row in cursor:
    x.append(row[0])
    y.append(row[1])
pie = go.Pie(labels = x, values = y)
pie = py.plot([pie],auto_open = True)


query = """
SELECT reward_year, COUNT(*) 
from Laureat
Group by reward_year
"""
cursor.execute(query)

x = list()
y = list()
for row in cursor:
    x.append(row[0])
    y.append(row[1])

x.sort()
y.sort()
print(x,y)
scatter = go.Scatter(x = x, y = y, mode="lines+markers")
scatter = py.plot([scatter],auto_open = True)

dash = dashboard.Dashboard()
bar_id = get_id(bar)
pie_id = get_id(pie)
scatter_id = get_id(scatter)


filed_1= {'type': 'box',
    'boxType': 'plot',
    'fileId': bar_id,
    'title': 'Кількість лауретів в кожній області.'}


filed_2 = {'type': 'box',
    'boxType': 'plot',
    'fileId': pie_id,
    'title': 'Відсоток лауреатів цієї країни відносно решти'}


filed_3 = {'type': 'box',
    'boxType': 'plot',
    'fileId': scatter_id,
    'title': 'Динаміка кількості лауреатів по годах.'}



dash.insert(filed_1)
dash.insert(filed_2, 'left', 1)
dash.insert(filed_3, 'below', 2)


py.dashboard_ops.upload(dash, 'DB_workshop 2')


cursor.close()
connection.close()
