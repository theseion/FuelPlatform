tests-compilation
newAnonymousTraitNamed: aString
	"Setting category to nil prevents registration in organizational structures"
	^ Trait
		newTraitNamed: aString
		uses: #()
		category: nil