private-extensions-flclasscluster
materializePostInstanceWithForFLClassCluster
	<flExtensionOf: #FLClassCluster isSource: true>
	^ 'materializePostInstance: aClass with: aDecoder

	| superclass category name instanceVariableNames format size |
	superclass := aDecoder nextEncodedReference.
	category := aDecoder nextEncodedReference.
	name := aDecoder nextEncodedReference.
	format := aDecoder nextEncodedReference.
	instanceVariableNames := aDecoder nextEncodedString substrings: '' ''.
	size := instanceVariableNames size - superclass instSize.

	aClass 
		basicSuperclass: superclass;
		setFormat: Object format + size;
		setName: name;
		basicCategory: category; 
		methodDictionary: MethodDictionary new;
		fuelSetInstanceVariables: instanceVariableNames'