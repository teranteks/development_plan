import  requests, json
import pytest
from flask import Flask

from app_code.main import create_app

@pytest.fixture()
def client():
    app = create_app()
    app.config["TESTING"] = True

    with app.test_client() as client:   
        yield client

@pytest.fixture()
def set_url():
    url = "http://localhost:5000/healthcheck42432244"
    return url


def test_webserver_reply(set_url,client):

    response = client.get(set_url)    
    assert response.status_code == 200
   

