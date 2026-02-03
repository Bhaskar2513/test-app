from sqlalchemy import Column, Integer, String, ForeignKey
from sqlalchemy.orm import relationship
from database import Base
class User(Base):
    __tablename__ = "users"

    id = Column(Integer, primary_key=True)
    name = Column(String(100))
    email = Column(String(100), unique=True)

    # One User -> Many Orders
    orders = relationship("Order", back_populates="user")
class Order(Base):
    __tablename__ = "orders"

    id = Column(Integer, primary_key=True)
    product_name = Column(String(100))
    price = Column(Integer)

    user_id = Column(Integer, ForeignKey("users.id"))

    # Many Orders -> One User
    user = relationship("User", back_populates="orders")
