function k-avro-read-all
	echo "Reading $argv from beginning..."
    ./bin/kafka-avro-console-consumer --topic $argv --zookeeper localhost:2181 --from-beginning
end
