private-extensions-flmetaclasscluster
serializePostInstanceWithForFLMetaclassCluster
	<flExtensionOf: #FLMetaclassCluster isSource: true>
	^ 'serializePostInstance: aMetaclass with: anEncoder

	anEncoder encodeReferenceTo: aMetaclass superclass.
	anEncoder encodeString: (self instanceVariablesStringFor: aMetaclass).
	anEncoder encodeUint24: aMetaclass format'