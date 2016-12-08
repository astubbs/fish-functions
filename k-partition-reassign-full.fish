function k-partition-reassign-full
	echo "{\"topics\":[{\"topic\": \"$argv\"} ], \"version\":1}" > topics-partition-reassign.json
	cat topics-partition-reassign.json
	./bin/kafka-reassign-partitions --zookeeper localhost:2181 --generate --topics-to-move-json-file topics-partition-reassign.json --broker-list 0,1,2,3,4 | tail -n 1 > topics-partition-reassign-plan.json
	cat topics-partition-reassign-plan.json
	./bin/kafka-reassign-partitions  --zookeeper localhost:2181 --execute --reassignment-json-file topics-partition-reassign-plan.json
	./bin/kafka-reassign-partitions  --zookeeper localhost:2181 --verify  --reassignment-json-file topics-partition-reassign-plan.json
end
