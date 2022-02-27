private-extensions-fltraitcluster
materializePostInstance: aTrait with: aDecoder
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
		initialize;
		setName: name;
		basicCategory: (category ifNil: [ RPackage defaultPackageName ]) asSymbol;
		environment: environment'