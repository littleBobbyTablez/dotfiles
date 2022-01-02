# Defined in - @ line 0
function mfuckdis --description 'alias mfuckdis=mci -DskipTests -DskipIts -DskipITs -DskipTest -Dmaven.test.failure.ignore=true -PskipLatexCheck'
	mci -DskipTests -DskipIts -DskipITs -DskipTest -Dmaven.test.failure.ignore=true -PskipLatexCheck $argv;
end
