import time
import requests

while True:
  resp=requests.get("http://api.exchangeratesapi.io/v1/latest?access_key=<api key here>").json()
  s=resp['rates']['TRY']
  msg="1 Euro {} TL".format(s)
  f=open("/data/index.html","w")
  f.write(msg)
  f.close()
  time.sleep(60)
