function k-partition-reassign-exec
	./bin/kafka-reassign-partitions  --zookeeper localhost:2181 --execute --reassignment-json-file topics-partition-reassign-plan.json
	./bin/kafka-reassign-partitions  --zookeeper localhost:2181 --verify  --reassignment-json-file topics-partition-reassign-plan.json
end
