function setPidApproval
	vim ~/.vwaws/jonas-approval.yaml -s (echo -e "/pp-\nd\$i $argv\e:wq" | psub)
end
