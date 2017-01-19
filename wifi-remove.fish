function wifi-remove
	networksetup -removepreferredwirelessnetwork en0 $argv
end
