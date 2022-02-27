private-extensions-fltraitcluster
materializePostInstanceWithForFLTraitCluster
	<flExtensionOf: #FLTraitCluster isSource: true>
	^ 'materializePostInstance: aTrait with: aDecoder
	| category name environment |
	category := aDecoder nextEncodedReference.
	name := aDecoder nextEncodedReference.
	environment := aDecoder nextEncodedReference.
	aDecoder nextEncodedReference. "format"
	aDecoder nextEncodedReference. "layout"
	aDecoder nextEncodedString. "instance variables"
	
	aTrait 
		name: name;
		basicCategory: (category ifNil: [ #''_UnpackagedPackage'']);
		environment: environment'