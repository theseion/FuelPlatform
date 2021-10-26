private-extensions-traitbehavior
fuelInitializeTraitCompositionForTraitBehavior
	<flExtensionOf: #TraitBehavior isSource: true>
	^ 'fuelInitializeTraitComposition

	self traitComposition do: [:each | each addTraitUser: self]'