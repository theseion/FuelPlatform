private-extensions-flmetaclasscluster
materializePostInstanceWithForFLMetaclassCluster
	<flExtensionOf: #FLMetaclassCluster isSource: true>
	^ 'materializePostInstance: aMetaclass with: aDecoder
	| superclass instanceVariableNames format |
	superclass := aDecoder nextEncodedReference.
	instanceVariableNames := aDecoder nextEncodedString substrings: '' ''.
	format := aDecoder nextEncodedUint24.

	aMetaclass
		basicSuperclass: superclass;
		setFormat: format;
		methodDictionary: MethodDictionary new;
		fuelSetInstanceVariables: instanceVariableNames'