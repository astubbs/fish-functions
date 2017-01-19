function k-read-all-avro
	./bin/kafka-avro-console-consumer \
	          --topic $argv \
         	  --zookeeper localhost:2181 \
         	  --from-beginning \
          --property print.key=true \
          --property key.deserializer=org.apache.kafka.common.serialization.StringDeserializer 
end