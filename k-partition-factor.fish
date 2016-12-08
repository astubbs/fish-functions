function k-partition-factor
	kafka-topics --zookeeper localhost:2181 --alter --topic $argv[1] --partitions $argv[2]
end
