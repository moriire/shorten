FROM python:3.11.2
RUN pip install django tzdata
WORKDIR shorten/
COPY . .
RUN sh -c 'python manage.py makemigrations' & 'python manage.py migrate'
EXPOSE 8000
CMD ["python", "runserver"]

