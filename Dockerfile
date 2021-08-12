FROM quay.io/strimzi/kafka:0.25.0-kafka-2.8.0
USER root:root
RUN mkdir -p /opt/kafka/plugins/debezium
COPY ./debezium-connector-mysql/ /opt/kafka/plugins/debezium/
COPY ./confluentinc-kafka-connect-avro-converter-6.2.0/lib/ /opt/kafka/plugins/confluentinc-kafka-connect-avro-converter/
USER 1001
