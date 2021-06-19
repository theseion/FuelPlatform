accessing-files
deleteFilePath: aFilename
	((Smalltalk at: #File) named: aFilename) delete