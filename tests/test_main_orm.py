"""
MYSQL_DB_NAME=FastAPIExample;MYSQL_HOST=localhost;MYSQL_ROOT_PWD=N0tS0S3curePassw0rd;MYSQL_TCP_PORT_EXAMPLES=50002;SQLALCHEMY_SILENCE_UBER_WARNING=1
"""
# from pathlib import Path
from pprint import pprint

from fastapi.testclient import TestClient

from main import app

# import pytest
# from main import ModelName
# from schemas import ItemSchema

# from main import Item
# from models import Item
# from models import User

client = TestClient(app)
ModelMsg = ['Deep Learning FTW!', 'Have some residuals', 'LeCNN all the images']


def test_create_user_post():
    response = client.post('/users/', json={'email': 'foo@bar.com', 'password': 'mypassword', 'item': None})
    pprint(response.json())
    assert response.status_code == 200
    assert response.json() == {'email': 'foo@bar.com', 'id': 1, 'is_active': True, 'items': []}
    pass
    pass
