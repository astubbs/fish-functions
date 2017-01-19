function k-delete
	kafka-topics --zookeeper localhost --delete --topic $argv
end
