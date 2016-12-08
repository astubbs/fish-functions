function k-producer-stdin
	bin/kafka-console-producer --broker-list localhost:9092 --topic $argv
end
