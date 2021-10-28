private-extensions-global
fuelAcceptForGlobal
	<flExtensionOf: #Global isSource: true>
	^ 'fuelAccept: aMapper
	aMapper visitGlobalVariable: self'