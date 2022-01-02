function dumpDb
	docker exec -t postgres pg_dumpall -c -U postgres > "dump_"(date +%d-%m-%y_%H_%M_%S)".sql"   
end
