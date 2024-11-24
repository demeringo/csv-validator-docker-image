FROM python:3.12-slim-bookworm

RUN pip install frictionless

RUN apt-get update; apt-get install wget unzip -y
RUN wget https://github.com/jqnatividad/qsv/releases/download/0.138.0/qsv-0.138.0-x86_64-unknown-linux-musl.zip
RUN unzip qsv-0.138.0-x86_64-unknown-linux-musl.zip qsv
RUN rm qsv-0.138.0-x86_64-unknown-linux-musl.zip

