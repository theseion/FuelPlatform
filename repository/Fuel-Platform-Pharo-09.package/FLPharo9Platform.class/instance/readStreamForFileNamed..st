accessing-files
readStreamForFileNamed: aString
	^ ((Smalltalk at: #File) named: aString) readStream
		binary;
		yourself