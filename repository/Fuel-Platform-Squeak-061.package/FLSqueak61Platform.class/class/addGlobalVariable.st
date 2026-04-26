private-hacks
addGlobalVariable
	Smalltalk
		at: #GlobalVariable
		ifPresent: [ :x | ^ self ].
	
	Object subclass: #GlobalVariable
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName