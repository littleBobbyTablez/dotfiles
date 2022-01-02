function openports
	lsof -n -i4TCP: | grep LISTEN $argv;
end
