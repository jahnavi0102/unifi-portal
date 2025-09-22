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
