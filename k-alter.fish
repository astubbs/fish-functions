function k-alter
	bin/kafka-topics --zookeeper localhost --alter --topic $argv[1] --partitions $argv[2]
end
