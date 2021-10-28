tests-compilation
newSubclassOf: aClass named: className uses: aTraitComposition instanceVariableNames: ivNamesString classVariableNames: classVarsString poolDictionaries: poolNamesString environment: anEnvironment package: packageName
	| class |
	class := ClassBuilder new
		name: className
		inEnvironment: anEnvironment
		subclassOf: aClass
		type: aClass typeOfClass
		instanceVariableNames: ivNamesString
		classVariableNames: classVarsString
		poolDictionaries: poolNamesString
		category: packageName.
		
	^ class
		setTraitComposition: aTraitComposition asTraitComposition;
		yourself