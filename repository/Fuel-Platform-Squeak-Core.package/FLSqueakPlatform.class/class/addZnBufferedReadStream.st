private-hacks
addZnBufferedReadStream
	Smalltalk
		at: #nBufferedReadStream
		ifPresent: [ :x | ^ self ].
		
	Object
		subclass: #nBufferedReadStream
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName