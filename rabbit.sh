#!/bin/bash

case "$1" in
    start)
        echo "Starting RabbitMQ container..."
        # docker run -d --rm --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq:3.13-management
        # docker run -d --rm --name rabbitmq -p 61613:61613 -p 15672:15672 rabbitmq-stomp
        docker run -d --rm --name rabbitmq -p 5672:5672 -p 15672:15672 rabbitmq-stomp
        ;;
    stop)
        echo "Stopping RabbitMQ container..."
        docker stop rabbitmq
        ;;
    logs)
        echo "Fetching logs for RabbitMQ container..."
        docker logs -f rabbitmq
        ;;
    *)
        echo "Usage: $0 {start|stop|logs}"
        exit 1
esac