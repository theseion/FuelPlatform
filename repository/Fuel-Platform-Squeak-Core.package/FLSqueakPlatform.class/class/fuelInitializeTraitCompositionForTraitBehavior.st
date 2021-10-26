private-extensions-traitbehavior
fuelInitializeTraitCompositionForTraitBehavior
	<flExtensionOf: #Behavior isSource: true>
	^ 'fuelInitializeTraitComposition

	self traitComposition do: [:each | each addTraitUser: self]'