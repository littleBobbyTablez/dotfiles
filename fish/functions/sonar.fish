function sonar
	mvn verify sonar:sonar -P sonarScan $argv;
end
