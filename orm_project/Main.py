from database import engine
from models import Base

Base.metadata.create_all(bind=engine)

print("Tables created successfully")
from database import SessionLocal
from models import User, Order

db = SessionLocal()

# Create user
user1 = User(name="Rahul", email="rahul2@gmail.com")

# Create orders
order1 = Order(product_name="Laptop", price=70000)
order2 = Order(product_name="Mouse", price=500)

# ASSOCIATE orders with user
user1.orders.append(order1)
user1.orders.append(order2)

db.add(user1)
db.commit()

print("User and Orders inserted")
users = db.query(User).all()

for user in users:
    print(user.name)
    for order in user.orders:
        print("  ", order.product_name, order.price)


