function k-read
	./bin/kafka-console-consumer \
          --topic $argv \
          --new-consumer \
          --bootstrap-server broker1:9092  \
          --formatter kafka.tools.DefaultMessageFormatter \
          --property print.key=true \
          --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer \
          --property value.deserializer=org.apache.kafka.common.serialization.StringDeserializer
end
