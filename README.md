# OCR Microservice

Un microservicio OCR construido con Flask, OpenCV y Tesseract.

## Cómo usar

### Docker

```bash
docker build -t ocr-service .
docker run -p 8080:8080 ocr-service
