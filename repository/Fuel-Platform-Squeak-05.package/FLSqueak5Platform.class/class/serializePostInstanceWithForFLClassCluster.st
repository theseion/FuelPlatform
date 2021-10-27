private-extensions-flclasscluster
serializePostInstanceWithForFLClassCluster
	<flExtensionOf: #FLClassCluster isSource: true>
	^ 'serializePostInstance: aClass with: anEncoder

	anEncoder encodeReferenceTo: aClass superclass.
	"Do not use #basicCategory because since it may be lazily computed it may happen that it is still in nil. "
	anEncoder encodeReferenceTo: aClass category.
	anEncoder encodeReferenceTo: aClass getName.
	anEncoder encodeReferenceTo: aClass format.	
	anEncoder encodeString: aClass instanceVariablesString'