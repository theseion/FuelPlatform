tests-compilation
newTraitNamed: aString uses: aTraitComposition instanceVariableNames: iVarString environment: anEnvironment package: packageName
	^ self class classInstaller make: [ :aBuilder |
		aBuilder
			environment: anEnvironment;
			name: aString;
			slots: iVarString asSlotCollection;
			traitComposition: aTraitComposition asTraitComposition;
			package: packageName;
			beTrait ]