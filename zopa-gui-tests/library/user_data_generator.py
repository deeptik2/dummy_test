import names
import requests
import json


def get_first_and_last_name():
    return names.get_first_name(),names.get_last_name()

def get_random_postcode():
    res= requests.get("https://api.postcodes.io/random/postcodes")
    json_body = json.loads(res.content)
    return json_body['result']['postcode']



