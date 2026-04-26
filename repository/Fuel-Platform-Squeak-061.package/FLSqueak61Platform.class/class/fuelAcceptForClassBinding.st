private-extensions-classbinding
fuelAcceptForClassBinding
	<flExtensionOf: #ClassBinding isSource: true>
	^ 'fuelAccept: aMapper
	aMapper visitGlobalVariable: self'