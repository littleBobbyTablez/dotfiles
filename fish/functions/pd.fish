function pd $argv 
	if count $argv > /dev/null
pushd $argv[1]
else
pushd $HOME
end
end
