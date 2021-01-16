FROM continuumio/miniconda3
LABEL maintainer="Brian Wilson <brian@wildsong.biz>"
LABEL version="1.0"
LABEL biz.wildsong.name="conda_flask"

ENV BASEDIR /srv/pylette
RUN mkdir $BASEDIR
WORKDIR $BASEDIR
ADD requirements.txt .


RUN conda update -n base -c defaults conda
RUN conda config --add channels conda-forge &&\
    conda install --file requirements.txt

RUN adduser --disabled-password --gecos '' app
