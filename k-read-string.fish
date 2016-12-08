function k-read-string
	./bin/kafka-console-consumer --zookeeper localhost:2181 \
          --topic $argv \
          --formatter kafka.tools.DefaultMessageFormatter \
          --property print.key=true \
          --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
          --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer
end
