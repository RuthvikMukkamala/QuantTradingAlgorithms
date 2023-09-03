from pydantic import BaseModel
import wrds

class WRDSDataManager:

    def create_connection(self, user_name: str):
        conn = wrds.Connection(wrds_username = user_name)
        return conn







