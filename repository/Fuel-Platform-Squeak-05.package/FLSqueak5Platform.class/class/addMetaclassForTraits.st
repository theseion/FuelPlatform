private-hacks
addMetaclassForTraits
	Smalltalk
		at: #MetaclassForTraits
		ifPresent: [ :x | ^ self ].
	
	Object subclass: #MetaclassForTraits
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName