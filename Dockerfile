# Base image
FROM rabbitmq:3.11.9-management

# Set environment variables
ENV RABBITMQ_DEFAULT_USER=admin
ENV RABBITMQ_DEFAULT_PASS=password

# Enable the management plugin
RUN rabbitmq-plugins enable --offline rabbitmq_management

# Expose necessary ports
EXPOSE 5672 15672

# Start RabbitMQ server
CMD ["rabbitmq-server"]
