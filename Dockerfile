# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster
LABEL maintainer=rorisang@eblocks.co.za
ADD main.py ./
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python3", "./main.py"]
