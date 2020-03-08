private-hacks
basicAddHacks
	super basicAddHacks.
	
	self
		addPackageManifest;
		addTraits;
		addAbstractBinaryFileStream;
		addExternalAddress;
		addZnBufferedReadStream;
		addZnBufferedWriteStream