docker build -t rabbitmq-self-hosted .
docker run -d -p 5672:5672 -p 15672:15672 -p 25672:25672 --name my-rabbitmq rabbitmq-self-hosted
