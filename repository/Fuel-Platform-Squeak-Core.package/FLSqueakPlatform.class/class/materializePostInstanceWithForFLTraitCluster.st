private-extensions-fltraitcluster
materializePostInstanceWithForFLTraitCluster
	<flExtensionOf: #FLTraitCluster isSource: true>
	^ 'materializePostInstance: aTrait with: aDecoder
	| category name environment |
	category := aDecoder nextEncodedReference.
	name := aDecoder nextEncodedReference.
	environment := aDecoder nextEncodedReference.
	
	aTrait 
		name: name;
		basicCategory: (category ifNil: [ #''_UnpackagedPackage'']);
		environment: environment'