function sleepin
	echo "Sleeping in $argv minutes..."
	set rest (math "$argv*60")
        sleep $rest
	#echo "Sleeping now..."
	pmset sleepnow
end
