FROM python:slim

ENV PYTHONBUFFERED 1

WORKDIR /app

COPY . .

RUN ls -l

RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]