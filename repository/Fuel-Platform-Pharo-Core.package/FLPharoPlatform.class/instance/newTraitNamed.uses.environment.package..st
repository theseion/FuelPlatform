tests-compilation
newTraitNamed: aString uses: aTraitComposition environment: anEnvironment package: packageName
	^ self class classInstaller make: [ :aBuilder |
		aBuilder
			environment: anEnvironment;
			name: aString;
			traitComposition: aTraitComposition asTraitComposition;
			package: packageName;
			beTrait ]