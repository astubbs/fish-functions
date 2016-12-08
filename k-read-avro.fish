function k-read-avro
	./bin/kafka-avro-console-consumer --zookeeper localhost:2181 \
          --topic $argv \
          --formatter kafka.tools.DefaultMessageFormatter \
          --property print.key=true \
          --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
          --property value.deserializer=io.confluent.kafka.serializers.KafkaAvroDeserializer \
          --consumer-property schema.registry.url=http://localhost:8081
end