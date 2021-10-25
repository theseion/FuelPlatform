accessing-files
createTemporaryDirectoryPathNamed: aString
	^ (FileLocator temp / aString) ensureCreateDirectory pathString