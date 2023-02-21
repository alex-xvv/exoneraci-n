FROM python:3.10.7-alpine3.15
ENV PYTHONBUFFERED=1
WORKDIR /app
ADD . /app
COPY ./requirements.txt ./app/requirements.txt

RUN pip install -r requirements.txt
COPY . ./app

CMD ["python","manage.py","runserver","0.0.0.0:80"]