accessing-files
createTemporaryDirectoryPathNamed: aString
	^ (FileLocator temp asFileReference ensureCreateDirectory: aString) pathString