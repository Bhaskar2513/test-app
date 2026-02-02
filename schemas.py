from pydantic import BaseModel, EmailStr

class UserCreate(BaseModel):
    name: str
    age: int
    email: EmailStr
    contact_number: str

class UserResponse(UserCreate):
    id: int

    class Config:
        from_attributes = True

