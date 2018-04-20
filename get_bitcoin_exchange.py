import requests
response = requests.get("https://api.coindesk.com/v1/bpi/currentprice.json")
print(response.content)
print("Program run successfully again")
