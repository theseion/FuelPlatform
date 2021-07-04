private-extensions-shiftclassbuilder
beTraitForShiftClassBuilder
	<flExtensionOf: #ShiftClassBuilder isSource: true>
	^ 'beTrait
	self
		superclass: nil;
		metaSuperclass: Trait;
		metaclassClass: MetaclassForTraits'