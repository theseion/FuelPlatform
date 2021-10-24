accessing-files
createTemporaryDirectoryPathNamed: aString
	^ (FileDirectory default createDirectory: aString) fullName