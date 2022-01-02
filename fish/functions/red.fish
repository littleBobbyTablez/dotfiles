# Defined in - @ line 0
function red --description 'alias red=git reset --hard HEAD ; git clean -f'
	git reset --hard HEAD ; git clean -f $argv;
end
