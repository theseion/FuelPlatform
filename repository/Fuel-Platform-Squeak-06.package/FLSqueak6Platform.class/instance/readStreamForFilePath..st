accessing-files
readStreamForFilePath: aString
	^ StandardFileStream new
		open: aString forWrite: false;
		binary;
		yourself