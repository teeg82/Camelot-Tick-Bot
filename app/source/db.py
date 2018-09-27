from peewee import (
    Model,
    PostgresqlDatabase,
    IntegerField,
    AutoField,
    CharField,
)

connection = PostgresqlDatabase('camelot', user='camelot', password='camelot',
                                               host='db', port=5432)

class BaseModel(Model):
    class Meta:
        database = connection

class TickMessage(BaseModel):
    class Meta:
        db_table = 'camelot_tick_messages'

    id = AutoField()
    message = CharField()
    frequency = IntegerField()
