FROM python:3.8-slim

WORKDIR /app

ADD . /app

RUN pip3 install flask==2.0.3
RUN pip3 install flask-cors==3.0.10
RUN pip3 install flask_restx
RUN pip3 install Werkzeug==2.0.3

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime && echo Asia/Seoul > /etc/timezone

EXPOSE 40003

CMD ["python", "app.py"]

