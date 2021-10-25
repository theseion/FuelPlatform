tests-compilation
newSubclassOf: aClass named: className uses: aTraitComposition instanceVariableNames: ivNamesString classVariableNames: classVarsString poolDictionaries: poolNamesString environment: anEnvironment package: packageName
	^ self class classInstaller make: [ :aBuilder | 
		aBuilder 
			environment: anEnvironment;
			name: className;
			superclass: aClass;
			traitComposition: aTraitComposition asTraitComposition;
			classTraitComposition: aTraitComposition asTraitComposition classComposition;
			slots: ivNamesString asSlotCollection;
			sharedVariablesFromString: classVarsString;
			sharedPools: poolNamesString;
			package: packageName ]