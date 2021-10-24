private-hacks
basicAddHacks
	super basicAddHacks.
	
	self
		addAbstractEnvironmentTestCase;
		addAbstractLayout;
		addClassVariable;
		addGlobalVariable;
		addMetaclassForTraits;
		addPointerLayout;
		addTaSequence;
		addTraitAwareClassFactory;
		addTraitedMetaclass