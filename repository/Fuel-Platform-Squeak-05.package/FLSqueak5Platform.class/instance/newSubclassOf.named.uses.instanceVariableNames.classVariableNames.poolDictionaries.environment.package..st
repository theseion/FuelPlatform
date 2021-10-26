tests-compilation
newSubclassOf: aClass named: className uses: aTraitComposition instanceVariableNames: ivNamesString classVariableNames: classVarsString poolDictionaries: poolNamesString environment: anEnvironment package: packageName
	^ ClassBuilder new
		name: className
		inEnvironment: anEnvironment
		subclassOf: aClass
		type: aClass typeOfClass
		instanceVariableNames: ivNamesString
		classVariableNames: classVarsString
		poolDictionaries: poolNamesString
		category: packageName