private-hacks
basicAddHacks
	super basicAddHacks.
	
	self
		addPackageManifest;
		addTraits;
		addAbstractBinaryFileStream;
		addExternalAddress;
		addZnBufferedReadStream;
		addZnBufferedWriteStream;
		addAbstractEnvironmentTestCase;
		addAbstractLayout;
		addClassVariable;
		addGlobalVariable;
		addMetaclassForTraits;
		addPointerLayout;
		addTaSequence;
		addTraitedMetaclass