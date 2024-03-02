from server import app

def test_index_page():
    with app.test_client() as client:
        response = client.get("/")
        assert response.status_code == 200
        assert b"Mary Jonah" in response.data
