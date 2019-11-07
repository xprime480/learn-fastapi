from pydantic import BaseModel

class CarInfo(BaseModel):
    make: str
    model: str
    year: int
    mileage: int = None
    
