private-extensions-classdescription
addToCompositionForClassDescription: aName
	<flExtensionOf: #ClassDescription isSource: true>
	 ^ 'addToComposition: aTrait
	self installTraitsFrom: aTrait asTraitComposition'