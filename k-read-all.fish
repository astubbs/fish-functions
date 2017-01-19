function k-read-all
	./bin/kafka-console-consumer --topic $argv --bootstrap-server localhost:9092 --from-beginning --formatter kafka.tools.DefaultMessageFormatter --property print.key=true --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer --new-consumer --property interceptor.classes=io.confluent.monitoring.clients.interceptor.MonitoringConsumerInterceptor
end
