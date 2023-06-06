from time import sleep
from json import dumps
from kafka import KafkaProducer

producer = KafkaProducer(
    bootstrap_servers=['localhost:9092'],
    value_serializer=lambda x: dumps(x).encode('utf-8')
)

while True:
    data = {
    "date_and_time": "12/21/16 19:15",
    "country": "USA",
    "city": "Waynesboro",
    "state": "VA",
    "shape": "Sphere",
    "summary": "Bright round object hovering in sky.",
    "lat": 38.0652286,
    "lng": -78.90588756
    }
    print(f"sending {data['date_and_time']}" )
    producer.send('topic-test', value=data)
    sleep(3)