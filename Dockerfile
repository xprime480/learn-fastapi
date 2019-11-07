#FROM ubuntu:18.04
#RUN apt update && apt install -y python3 && pip install fastapi uvicorn

FROM python:3.8.0-buster
RUN pip install fastapi uvicorn
ENV PYTHONPATH=/data/learn-fastapi/lib:${PYTHONPATH}
CMD ["/bin/bash"]
