accessing-files
createDirectoryPath: aPathString
	^ (FileDirectory on: aPathString) assureExistance