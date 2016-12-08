function k-kill-all-brokers
	kill (jps -m | grep SupportedKafka | cut -f 1 -d ' ')
end
