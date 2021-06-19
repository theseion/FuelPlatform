accessing-files
writeStreamForFilePath: aString
	^ ((Smalltalk at: #File) named: aString) writeStream
		binary;
		yourself