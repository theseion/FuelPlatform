tests-compilation
newAnonymousTraitNamed: aString
	"Setting category to nil prevents registration in organizational structures"
	^ Trait
		named: aString
		uses: #()
		category: 'ignore'
		env: (Environment withName: 'anonymous env')