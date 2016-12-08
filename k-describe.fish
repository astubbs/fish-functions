function k-describe
	./bin/kafka-topics --describe --topic $argv --zookeeper localhost:2181
end
