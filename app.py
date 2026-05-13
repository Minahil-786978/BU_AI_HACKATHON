from flask import Flask, render_template, request, redirect, session
from flask_mysqldb import MySQL

app = Flask(__name__)

app.secret_key = "atomlearn"

# =========================================================
# MYSQL CONFIGURATION
# =========================================================

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'Meena@04'
app.config['MYSQL_DB'] = 'atomlearn_ai'

mysql = MySQL(app)

# =========================================================
# LOGIN PAGE
# =========================================================

@app.route('/', methods=['GET', 'POST'])
def login():

    error = None

    if request.method == 'POST':

        email = request.form['email']
        password = request.form['password']

        cur = mysql.connection.cursor()

        cur.execute("""
            SELECT * FROM students
            WHERE email=%s AND password=%s
        """, (email, password))

        student = cur.fetchone()

        if student:

            session['student_id'] = student[1]

            return redirect('/dashboard')

        else:
            error = "Invalid Email or Password"

    return render_template('login.html', error=error)

# =========================================================
# DASHBOARD
# =========================================================

@app.route('/dashboard')
def dashboard():

    if 'student_id' not in session:
        return redirect('/')

    student_id = session['student_id']

    cur = mysql.connection.cursor()

    # STUDENT INFO
    cur.execute("""
        SELECT * FROM students
        WHERE student_id=%s
    """, [student_id])

    student = cur.fetchone()

    # AI DNA
    cur.execute("""
        SELECT * FROM ai_learning_dna
        WHERE student_id=%s
    """, [student_id])

    dna = cur.fetchone()

    # PERFORMANCE
    cur.execute("""
        SELECT * FROM student_performance
        WHERE student_id=%s
    """, [student_id])

    performance = cur.fetchall()

    return render_template(
        'dashboard.html',
        student=student,
        dna=dna,
        performance=performance
    )

# =========================================================
# LOGOUT
# =========================================================

@app.route('/logout')
def logout():

    session.clear()

    return redirect('/')

# =========================================================

if __name__ == '__main__':
    app.run(debug=True)