accessing-files
createTemporaryDirectoryPathNamed: aString
	^ (FileLocator temp createDirectory: aString) asFileReference pathString