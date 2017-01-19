function curlj
	curl $argv -s | json_pp | pygmentize -l json
end
