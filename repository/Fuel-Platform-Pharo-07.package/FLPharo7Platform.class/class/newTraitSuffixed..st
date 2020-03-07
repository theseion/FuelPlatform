private-extensions-flserializationtest
newTraitSuffixed: suffix
	<flExtensionOf: #FLSerializationTest isSource: true>
	^ 'newTraitSuffixed: suffix
	^ self classFactory
		newTraitNamed: (self traitNamePrefix, suffix) asSymbol
		uses: Array new 
		category: (self classFactory packageName, ''-Default'') asSymbol'