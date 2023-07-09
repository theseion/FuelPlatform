accessing-files
writeStreamForFilePath: aString
	^ StandardFileStream new
		open: aString forWrite: true;
		binary;
		yourself