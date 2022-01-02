function latex
	mvn -P latexProfil clean process-resources latex:latex $argv;
end
