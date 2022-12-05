from flask_sqlalchemy import SQLAlchemy
db = SQLAlchemy()

class Usuarios(db.Model):
    __tablename__ = 'user'
    iduser = db.Column(db.Integer, unique=True, nullable=False, primary_key=True)
    mail = db.Column(db.String(20))
    passwd = db.Column(db.String(20))

class Informacion(db.Model):
    __tablename__='info'
    idinfo = db.Column(db.Integer, primary_key=True)
    ciudad = db.Column(db.String(30))
    edad = db.Column(db.Integer)
    fechaNacimiento = db.Column(db.Date)
    freelance = db.Column(db.String(10))
    gradoEstudios = db.Column(db.String(50))
    telefono = db.Column(db.Integer)

class Experiencia(db.Model):
    __tablename__='experiencia'
    idexperiencia = db.Column(db.Integer, primary_key=True)
    lugar = db.Column(db.String(50))
    tiempoInicio = db.Column(db.Date)
    tiempoFinal = db.Column(db.Date)
    puesto = db.Column(db.String(30))
    descripcion = db.Column(db.String(300))