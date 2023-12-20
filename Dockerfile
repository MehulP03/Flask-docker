FROM python:3.9.6
WORKDIR /flask-docker
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . /flask-docker/
EXPOSE 5000
CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0" ]