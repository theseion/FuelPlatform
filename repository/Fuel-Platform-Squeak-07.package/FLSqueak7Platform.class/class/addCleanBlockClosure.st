private-hacks
addCleanBlockClosure
	Smalltalk
		at: #CleanBlockClosure
		ifPresent: [ :x | ^ self ].
		
	Object
		subclass: #CleanBlockClosure
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName