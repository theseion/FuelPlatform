accessing-files
createDirectoryPath: aPathString
	^ (FileDirectory on: aPathString) assureExistence