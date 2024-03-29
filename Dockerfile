FROM ubuntu
RUN rm -rf /etc/apt/sources.list
COPY sources.list /etc/apt/sources.list
RUN apt-get update
RUN apt-get install python python-pip -y
RUN pip install flask
COPY app.py /opt/app.py 
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0
