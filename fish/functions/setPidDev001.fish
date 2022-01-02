function setPidDev001
	vim ~/.vwaws/jonas-dev001.yaml -s (echo -e "/pp-\nd\$i $argv\e:wq" | psub)
end
