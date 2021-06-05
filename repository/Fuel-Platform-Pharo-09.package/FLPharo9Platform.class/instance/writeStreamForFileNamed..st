accessing-files
writeStreamForFileNamed: aString
	^ ((Smalltalk at: #File) named: aString) writeStream
		binary;
		yourself