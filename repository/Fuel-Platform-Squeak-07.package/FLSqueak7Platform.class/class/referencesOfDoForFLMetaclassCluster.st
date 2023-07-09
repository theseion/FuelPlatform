private-extensions-flmetaclasscluster
referencesOfDoForFLMetaclassCluster
	<flExtensionOf: #FLMetaclassCluster isSource: true>
	^ 'referencesOf: aMetaclass do: aBlock
	super
		referencesOf: aMetaclass
		do: aBlock.
	
	aBlock value: aMetaclass superclass'