private-hacks
addZnBufferedReadStream
	Smalltalk
		at: #ZnBufferedReadStream
		ifPresent: [ :x | ^ self ].
		
	Object
		subclass: #ZnBufferedReadStream
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName