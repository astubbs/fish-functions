function k-read-all
	./bin/kafka-console-consumer --topic $argv --bootstrap-server broker1:9092 --from-beginning --formatter kafka.tools.DefaultMessageFormatter --property print.key=true --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer --new-consumer
end
