private-extensions-behavior
fuelInitializeTraitCompositionForBehavior
	<flExtensionOf: #Behavior isSource: true>
	'fuelInitializeTraitComposition

	self traitComposition do: [:each | each addTraitUser: self]'