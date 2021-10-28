private-hacks
addExternalAddress
	Smalltalk
		at: #ExternalAddress
		ifPresent: [ :x | ^ self ].
		
	Object
		subclass: #ExternalAddress
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName