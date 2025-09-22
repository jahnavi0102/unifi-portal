# UniFi External Captive Portal

This project implements an external captive portal for UniFi Wi-Fi using Flask, MySQL, and Tailwind CSS.

## Features

- Collect guest emails
- Authorize guests in UniFi controller
- View all guests in a simple admin panel
- Automatic database migrations

## Prerequisites

- Docker
- Docker Compose

## Getting Started

Create an .ENV file in the root directory and fill in these values 


            # Unifi Portal
            UNIFI_BASE_URL=
            UNIFI_USERNAME=
            UNIFI_PASSWORD=
            UNIFI_SITE=default

            # Flask App
            SECRET_KEY=devkey
            SQLALCHEMY_DATABASE_URI=mysql+pymysql://newuser:password@db/unifi_portal
            SQLALCHEMY_TRACK_MODIFICATIONS=False

            # MySQL
            MYSQL_ROOT_PASSWORD=rootpassword
            MYSQL_DATABASE=unifi_portal
            MYSQL_USER=newuser
            MYSQL_PASSWORD=password

Simply run:

```bash
docker-compose build
docker-compose up
```


### Access

Captive portal login page: http://localhost:5000

Admin guest list: http://localhost:5000/admin


---

### Notes

1. `flask db upgrade` automatically applies all migration scripts in `migrations/versions/`.  
2. On a **new system**, as long as Docker volumes persist MySQL data, it will create the database and tables automatically.  
3. No manual `flask db init/migrate/upgrade` commands are needed anymore.  
