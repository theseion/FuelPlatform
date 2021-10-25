tests-compilation
newSubclassOf: aClass named: className uses: aTraitComposition instanceVariableNames: ivNamesString classVariableNames: classVarsString poolDictionaries: poolNamesString environment: anEnvironment package: packageName
	^ ClassBuilder new
		superclass: aClass
		subclass: className
		instanceVariableNames: ivNamesString
		classVariableNames: classVarsString
		poolDictionaries: poolNamesString
		category: packageName
