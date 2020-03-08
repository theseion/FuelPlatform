private-extensions-flserializationtest
newTraitSuffixed: suffix
	<flExtensionOf: #FLSerializationTest>
	^ self classFactory
		newTraitNamed: (self traitNamePrefix, suffix) asSymbol
		uses: Array new 
		category: (self classFactory packageName, '-Default') asSymbol