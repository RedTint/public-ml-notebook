FROM jupyter/minimal-notebook
ADD ./requirements.txt ./

USER root 

RUN apt-get update && apt-get install -y python3-opencv
RUN python3 -m pip install -r requirements.txt

EXPOSE 8888
