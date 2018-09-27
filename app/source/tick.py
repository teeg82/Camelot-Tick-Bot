from slacker import Slacker
from random import randint
from db import TickMessage
from peewee import fn
import os


SLACK_TOKEN = os.getenv('SLACK_TOKEN', '')
ENVIRONMENT = os.getenv('tick_env', 'DEBUG')

if ENVIRONMENT == 'DEBUG':
    target_channel = '#area51'
else:
    target_channel = '#general'

def tick():
    slack = Slacker(SLACK_TOKEN)

    randomSortValue = randint(0,100)

    tick_message = TickMessage.select() \
               .where(TickMessage.frequency >= randomSortValue) \
               .order_by(fn.Random()) \
               .limit(1).get()

    slack.chat.post_message(target_channel, tick_message.message, as_user=True)

if __name__ == "__main__":
    tick()
