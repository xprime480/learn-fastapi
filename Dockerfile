#FROM ubuntu:18.04
#RUN apt update && apt install -y python3 && pip install fastapi uvicorn

FROM python:3.8.0-buster
RUN pip install fastapi uvicorn email-validator

ENV PYTHONPATH=/data/learn-fastapi/lib:${PYTHONPATH}

EXPOSE 3000

CMD ["/bin/bash"]
