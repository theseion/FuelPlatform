private-hacks
addZnBufferedWriteStream
	Smalltalk
		at: #ZnBufferedWriteStream
		ifPresent: [ :x | ^ self ].
		
	Object
		subclass: #ZnBufferedWriteStream
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName