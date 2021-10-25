tests-compilation
newAnonymousTraitNamed: aString
	^ Smalltalk anonymousClassInstaller make: [ :builder |
		builder
			"The name is necessary to not break Pharo"
			name: aString;
			beTrait ]