function castartdb
	docker start postgiscontainer | docker start cassandracontainer $argv;
end
