from lib.space_class import Space
from lib.space_repository import SpaceRepository

def test_init():
    space = Space(1, 'name', 1, 'description', 50)
    assert space.id == 1
    assert space.name == 'name'
    assert space.host_id == 1
    assert space.description == 'description'
    assert space.price_per_night == 50

def test_eq():
    space_1 = Space(1, 'name', 1, 'description', 50)
    space_2 = Space(1, 'name', 1, 'description', 50)
    assert space_1 == space_2

def test_repr():
    space_1 = Space(1, 'name', 1, 'description', 50)
    assert str(space_1) == 'Space: name, 1, description, 50'

def test_change_status(db_connection):
    db_connection.seed('seeds/MAKERSBNB.sql')
    space_repo = SpaceRepository(db_connection)
    print(space_repo.find_by_id(1))
    space_repo.change_status('approved', 1, '2021-02-24')

def test_change_status_2(db_connection):
    db_connection.seed('seeds/MAKERSBNB.sql')
    space_repo = SpaceRepository(db_connection)
    print(space_repo.find_by_id(1))
    space_repo.change_status('pending', 1, '2021-02-24')
    
