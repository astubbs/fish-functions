function k-kill-consumers
	jps -l | grep ConsoleConsumer
    kill -9 (jps -l | grep Console | cut -d' ' -f 1)
end
