import requests

url = "https://www.directfreight.com/api/credit_reports"

querystring = {"credit_report_id":"SOME_STRING_VALUE","format":"SOME_STRING_VALUE"}

response = requests.request("GET", url, params=querystring)

print(response.text)