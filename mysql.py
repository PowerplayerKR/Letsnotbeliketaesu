import pymysql
import csv

db = pymysql.connect(host="localhost",user="root",passwd="mysql",db="hanyang")

cur = db.cursor()
sql = "INSERT INTO user VALUES(%s,%s)"

f = open('C:\\Users\power\Downloads\data.csv','r',encoding='utf-8')
rdr = csv.reader(f)

for line in rdr:
    cur.execute(sql,(line[0],line[1]))

db.commit()
db.close()

f.close()