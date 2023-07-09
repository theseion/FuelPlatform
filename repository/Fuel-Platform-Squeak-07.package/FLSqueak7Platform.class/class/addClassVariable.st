private-hacks
addClassVariable
	Smalltalk
		at: #ClassVariable
		ifPresent: [ :x | ^ self ].
	
	Object subclass: #ClassVariable
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName