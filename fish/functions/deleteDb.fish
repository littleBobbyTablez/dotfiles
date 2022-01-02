# Defined in /Users/jonas.stendel/.config/fish/functions/deleteDb.fish @ line 1
function deleteDb
	docker stop postgres
docker rm postgres
end
