function k-partition-reassign
	echo "{\"topics\":[{\"topic\": \"$argv\"} ], \"version\":1}" > topics-partition-reassign.json
	cat topics-partition-reassign.json
	./bin/kafka-reassign-partitions --zookeeper localhost:2181 --generate --topics-to-move-json-file topics-partition-reassign.json --broker-list 0,1,2,3 > topics-partition-reassign-plan.json
	cat topics-partition-reassign-plan.json
	cat topics-partition-reassign-plan.json | tail -1 > topics-partition-reassign-plan.json
end