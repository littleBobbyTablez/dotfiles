function restoreDb
	cat $argv | docker exec -i postgres psql -U postgres
end
