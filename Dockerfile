#Created with the help of: https://www.freecodecamp.org/news/how-to-dockerize-a-flask-app/

FROM python:3-alpine

WORKDIR /home/python

ADD . /home/python

COPY requirements.txt .

RUN pip3 install -r requirements.txt

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]