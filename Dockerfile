FROM python:3.11-slim

WORKDIR /app

# Install MySQL client dependencies
RUN apt-get update && \
    apt-get install -y build-essential default-libmysqlclient-dev && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

ENV FLASK_APP=run.py
ENV FLASK_ENV=production

# Run migration + start Flask automatically
CMD flask db upgrade && flask run --host=0.0.0.0 --port=5000
