from . import create_app
from flask import render_template, request, redirect, session
from .migrate import init_db
from .models import Usuarios, Informacion, Experiencia, db

app = create_app()

@app.route('/')
def index():
    return redirect('/login')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST' and 'mail' in request.form and 'passwd' in request.form:
        mail = request.form['mail']
        passwd = request.form['passwd']

        user = Usuarios.query.filter_by(mail=mail).first()
        if user and user.passwd == passwd:
            return render_template('inicio.html')
        else:
            return render_template('login.html')
    return render_template('login.html')

@app.route('/inicio', methods=['GET', 'POST'])
def inicio():
    return render_template('inicio.html')

@app.route('/sobreMi', methods=['GET', 'POST'])
def sobreMi():
    informacion = Informacion.query.all()
    return render_template('sobreMi.html', informacion=informacion)

@app.route('/curriculum', methods=['GET', 'POST'])
def curriculum():
    experiencias = Experiencia.query.all()
    return render_template('curriculum.html', experiencias=experiencias)

@app.route('/agregarExperienciaLaboral', methods=['GET', 'POST'])
def agregarExperienciaLaboral():
    exp = Experiencia(
        lugar=request.form["lugar"],
        tiempoInicio=request.form["tiempoInicio"],
        tiempoFinal=request.form["tiempoFinal"],
        puesto=request.form["puesto"],
        descripcion=request.form["descripcion"]
    )
    db.session.add(exp)
    db.session.commit()

    experiencias = Experiencia.query.all()
    return render_template('curriculum.html', experiencias=experiencias)

@app.route('/actualizarInformacion', methods=['POST'])
def actualizar():
    idB = request.form.get('id')
    telefonoN = request.form.get('phone')
    ciudadN = request.form.get('city')
    edadN = request.form.get('age')
    gradoN = request.form.get('GE')
    freeN = request.form.get('FL')

    infor = Informacion.query.filter_by(idinfo=idB).first()
    infor.idinfo = idB
    infor.telefono = telefonoN
    infor.ciudad = ciudadN
    infor.edad = edadN
    infor.gradoEstudios = gradoN
    infor.freelance = freeN

    db.session.commit()

    informacion = Informacion.query.all()
    return render_template('sobreMi.html', informacion=informacion)

@app.route('/borrarExperiencia', methods=['POST'])
def borrarExperiencia():
    idBorrar = request.form.get("borrarExperiencia")
    fExperiencia = Experiencia.query.filter_by(idexperiencia=idBorrar).first()
    db.session.delete(fExperiencia)
    db.session.commit()

    experiencias = Experiencia.query.all()
    return render_template('curriculum.html', experiencias=experiencias)

if __name__ == '__main__':
    app.run(debug=True, port=5000)