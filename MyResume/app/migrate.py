from app.models import *
def create_db():
    db.drop_all()
    db.create_all()

def init_db():
    create_db()
    admin = Usuarios(mail="Eduardo")

    db.session.add(admin)
    db.session.commit()