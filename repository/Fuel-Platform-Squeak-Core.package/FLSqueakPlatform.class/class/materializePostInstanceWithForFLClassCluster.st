private-extensions-flclasscluster
materializePostInstanceWithForFLClassCluster
	<flExtensionOf: #FLClassCluster isSource: true>
	^ 'materializePostInstance: aClass with: aDecoder

	| superclass category name instanceVariableNames format |
	superclass := aDecoder nextEncodedReference.
	category := aDecoder nextEncodedReference.
	name := aDecoder nextEncodedReference.
	format := aDecoder nextEncodedReference.
	instanceVariableNames := aDecoder nextEncodedString substrings: '' ''.

	aClass 
		basicSuperclass: superclass;
		setFormat: superclass format + instanceVariableNames size;
		setName: name;
		basicCategory: category; 
		methodDictionary: MethodDictionary new;
		fuelSetInstanceVariables: instanceVariableNames'