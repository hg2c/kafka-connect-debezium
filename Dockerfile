FROM quay.io/strimzi/kafka:0.25.0-kafka-2.8.0
USER root:root

COPY ./confluentinc-kafka-connect-avro-converter-6.2.0/lib/ /opt/kafka/plugins/confluentinc-kafka-connect-avro-converter/
COPY ./debezium-connector-mysql-1.6.1/ /opt/kafka/plugins/debezium-connector-mysql-1.6.1/

USER 1001
