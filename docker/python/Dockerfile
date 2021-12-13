FROM python:3.9

RUN apt-get -y update --fix-missing

WORKDIR /app

# Install pipenv and compilation dependencies
RUN pip install pipenv

COPY . .

RUN pipenv install --system --deploy --ignore-pipfile