from sqlalchemy import create_engine
from sqlalchemy.orm import declarative_base, sessionmaker

# CHANGE username, password if needed
DATABASE_URL = "mysql+mysqlconnector://root:1234@localhost/orm_mysql_db"

engine = create_engine(DATABASE_URL, echo=True)

SessionLocal = sessionmaker(bind=engine)

Base = declarative_base()
