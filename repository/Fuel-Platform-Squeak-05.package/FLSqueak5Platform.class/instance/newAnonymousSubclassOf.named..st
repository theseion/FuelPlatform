tests-compilation
newAnonymousSubclassOf: aClass named: aString
	"Setting category to nil prevents registration in organizational structures"
	^ ClassBuilder new
		superclass: aClass
		subclass: aString
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: nil
