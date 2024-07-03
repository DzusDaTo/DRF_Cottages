FROM python:3.11.4

COPY requirements.txt /temp/requirements.txt

COPY . /cottages-app

WORKDIR /cottages-app

EXPOSE 8000

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# RUN ./manage.py migrate
# RUN ./manage.py loaddata fixtures/users.json fixtures/categories.json fixtures/towns.json fixtures/cottages.json fixtures/likes.json fixtures/rents.json fixtures/reviews.json

RUN adduser --disabled-password cottages-user

USER cottages-user
