# Defined in /Users/jonas.stendel/.config/fish/functions/makeDb.fish @ line 2
function makeDb --description 'alias makeDb=docker run -d -e POSTGRES_PASSWORD=password -p 5432:5432 --name postgres postgres'
	docker run -d -e POSTGRES_PASSWORD=password -p 5432:5432 --name postgres postgres $argv;
end
