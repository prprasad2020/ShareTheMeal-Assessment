import sys
import requests

if len(sys.argv) > 1:
    lb_endpoint = sys.argv[1]
else:
    print("Please pass the LoadBalancer URL as an argument")
    sys.exit(2)

try:
    response = requests.get(lb_endpoint, timeout=10)
except requests.exceptions.RequestException as err:
    print(str(err))
    sys.exit(2)

if response.status_code == 200:
    print("Node App is Running")
elif "Hello, world!" not in response.text:
    print("Expected String \"Hello, world!\" not found !")
else:
    print("Expected 200 Response code not returned ! Returned response code:", response.status_code)
