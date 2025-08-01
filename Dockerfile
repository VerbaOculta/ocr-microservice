FROM python:3.10-slim

# Instala dependencias necesarias
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Usa gunicorn en lugar de Flask dev server
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
