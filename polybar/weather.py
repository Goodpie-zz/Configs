#!/bin/python3
import urllib.request, json

city = "Perth"
api_key = "642a76e68929c32f7bdee0ed86ed30a3" 

weather = eval(str(urllib.request.urlopen("http://api.openweathermap.org/data/2.5/weather?q={}&APPID={}".format(city, api_key)).read())[2:-1])

info = weather["weather"][0]["description"].capitalize()
temp = int(float(weather["main"]["temp"]) - 272.15)

print("%s, %i °C" % (info, temp))
