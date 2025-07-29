FROM python:3.10-slim

RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libgl1 \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

EXPOSE 8080
CMD ["python", "app.py"]
