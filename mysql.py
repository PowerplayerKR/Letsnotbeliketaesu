import pymysql
import csv

db = pymysql.connect(host="localhost",user="root",passwd="mysql",db="jsd",use_unicode=True, charset="utf8")

cur = db.cursor()
sql = "INSERT INTO booktest VALUES(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"

f = open('C:/Users/power/Downloads/book.csv','r',encoding='utf-8')
rdr = csv.reader(f)

for line in rdr:
    cur.execute(sql,(line[0],line[1],line[2],line[3],line[4],line[5],line[6],line[7],line[8],line[9],line[10]))
db.commit()
db.close()

f.close()

print('끝')
