function curltime
	curl -o /dev/null  -s -w "%{time_connect} + %{time_starttransfer} = %{time_total}\n" $argv
end
