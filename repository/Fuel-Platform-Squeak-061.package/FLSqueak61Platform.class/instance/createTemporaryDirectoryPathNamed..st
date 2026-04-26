accessing-files
createTemporaryDirectoryPathNamed: aString
	FileDirectory default createDirectory: aString.
	^ (FileDirectory default / aString) fullName