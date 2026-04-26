private-hacks
addTaSequence
	Smalltalk
		at: #TaSequence
		ifPresent: [ :x | ^ self ].
	
	Object subclass: #TaSequence
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName