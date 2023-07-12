from bs4 import BeautifulSoup
from robot.libraries.BuiltIn import BuiltIn
import requests
import time

def webpage_contains_text(url, text, delay=1):
    response = requests.get(url)
    page_content = response.content
    soup = BeautifulSoup(page_content, 'html.parser')

    while text not in soup.get_text():
        time.sleep(delay)
        response = requests.get(url)
        page_content = response.content
        soup = BeautifulSoup(page_content, 'html.parser')

    return True
