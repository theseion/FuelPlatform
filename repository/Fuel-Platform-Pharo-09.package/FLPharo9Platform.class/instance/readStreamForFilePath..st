accessing-files
readStreamForFilePath: aString
	^ ((Smalltalk at: #File) named: aString) readStream
		binary;
		yourself