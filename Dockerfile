FROM python:3.9-slim

WORKDIR /usr/src/app

COPY . .

RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

ENV NAME flask-app-gpt

CMD ["python", "app.py"]