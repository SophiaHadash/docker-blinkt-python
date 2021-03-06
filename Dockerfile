FROM python:3.8.2-buster
MAINTAINER Sophia Hadash

USER root

# copy contents
WORKDIR /usr/src/app
ADD src ./src
ADD requirements.txt .

# install packages
RUN pip3 install -r requirements.txt

CMD ["python3", "src/main.py"]
