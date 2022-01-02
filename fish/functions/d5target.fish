function d5target
	ssh -L 8080:127.0.0.1:8080 root@10.35.4.72 $argv;
end
