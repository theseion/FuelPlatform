private-hacks
addTraitedMetaclass
	Smalltalk
		at: #TraitedMetaclass
		ifPresent: [ :x | ^ self ].
	
	Object subclass: #TraitedMetaclass
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName