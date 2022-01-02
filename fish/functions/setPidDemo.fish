function setPidDemo
	vim ~/.vwaws/jonas-demo.yaml -s (echo -e "/pp-\nd\$i $argv\e:wq" | psub)
end
