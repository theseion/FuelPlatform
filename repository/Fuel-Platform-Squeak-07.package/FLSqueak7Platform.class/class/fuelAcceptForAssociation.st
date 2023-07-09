private-extensions-association
fuelAcceptForAssociation
	<flExtensionOf: #Association isSource: true>
	^ 'fuelAccept: aMapper
	aMapper visitAssociation: self'