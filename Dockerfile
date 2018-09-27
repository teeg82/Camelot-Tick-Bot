FROM python:2.7.14-alpine

RUN apk update && \
    apk add postgresql-dev gcc musl-dev

RUN pip install \
                slacker \
                peewee \
                psycopg2

RUN mkdir -p /tick_bot
COPY ./app/source/ /tick_bot

COPY tick_cron /tick-cron
RUN chmod 0644 /tick-cron && \
    touch /var/log/cron.log && \
    /usr/bin/crontab /tick-cron

WORKDIR /tick_bot
