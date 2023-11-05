#Created with the help of: https://www.freecodecamp.org/news/how-to-dockerize-a-flask-app/

FROM python:3-alpine

WORKDIR /app

COPY . .

COPY requirements.txt .

RUN pip3 install -r requirements.txt

ARG PASSWORD
ENV PASSWORD=$PASSWORD

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]