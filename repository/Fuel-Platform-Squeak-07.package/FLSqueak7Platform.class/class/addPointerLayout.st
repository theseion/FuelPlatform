private-hacks
addPointerLayout
	Smalltalk
		at: #PointerLayout
		ifPresent: [ :x | ^ self ].
	
	ObjectLayout subclass: #PointerLayout
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName