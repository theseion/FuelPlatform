private-extensions-flclasscluster
materializePostInstanceWithForFLClassCluster
	<flExtensionOf: #FLClassCluster isSource: true>
	^ 'materializePostInstance: aClass with: aDecoder

	| superclass category name instanceVariableNames format newFormat |
	superclass := aDecoder nextEncodedReference.
	category := aDecoder nextEncodedReference.
	name := aDecoder nextEncodedReference.
	format := aDecoder nextEncodedReference.
	instanceVariableNames := aDecoder nextEncodedString substrings: '' ''.
	"<5 bits inst spec><16 bits inst size>.
	Subclass inst spec may be different than that of superclass (e.g. #word instead of #normal)."
	newFormat := (format bitShift: -16) bitShift: 16)
		+ superclass instSize
		+ instanceVariableNames size.
	aClass 
		basicSuperclass: superclass;
		setFormat: newFormat;
		setName: name;
		basicCategory: category; 
		methodDictionary: MethodDictionary new;
		fuelSetInstanceVariables: instanceVariableNames'