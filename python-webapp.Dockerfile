FROM python:3.11

RUN mkdir /app

WORKDIR /app

COPY requirements.txt requirements.txt
COPY app.py app.py

RUN pip install -r requirements.txt

ENV FLASK_APP=app FLASK_ENV=development

ENTRYPOINT ["flask"]
CMD ["run", "--host=0.0.0.0"]
