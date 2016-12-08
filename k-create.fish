function k-create
	bin/kafka-topics --create --zookeeper localhost:2181 --replication-factor $argv[3] --partitions $argv[2] --topic $argv[1]
end
