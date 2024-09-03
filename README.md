# Proyecto Final Apps Web BD

## Overview

This project is a web application developed using Flask, a micro web framework for Python. The application serves as a resume builder, allowing users to log in, add personal information, work experience, and update their resume details.

## Features

- User Authentication
- Add and Update Personal Information
- Add and Update Work Experience
- View Resume

## Project Structure
ProyectoFinalAppsWebBD/
├── MyResume/
│   ├── app/
│   │   ├── init.py
│   │   ├── app.py
│   │   ├── config.py
│   │   ├── migrate.py
│   │   ├── models.py
│   │   └── ...
│   ├── venv/
│   └── ...


## Installation

1. **Clone the repository**:
   ```sh
   git clone https://github.com/yourusername/ProyectoFinalAppsWebBD.git
   cd ProyectoFinalAppsWebBD/MyResume

2. **Create and activate a virtual environment**:
    python -m venv venv
    .\venv\Scripts\activate

3. **Install the dependencies**:
    pip install -r requirements.txt

## Configuration
Update the config.py file with your database configuration and other settings.

## Running the Application
1. **Activate the virtual environment***:
    .\venv\Scripts\activate

2. **Run the application**:
    python -m app.app

## Dependencies
    Flask
    Flask-SQLAlchemy
    MySQLclient and PyMySQL
