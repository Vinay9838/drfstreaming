FROM python:3.8

RUN apt-get update

WORKDIR /app

# to avoid creating the pyc
ENV PYTHONDONTWRITEBYTECODE 1
# to show django terminal
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /app/requirements.txt

RUN pip3.8 install -r requirements.txt

COPY ./ /app

EXPOSE 8080

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

