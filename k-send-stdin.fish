function k-send-stdin
	./bin/kafka-console-producer --broker-list localhost:9092 --topic game-events
end
