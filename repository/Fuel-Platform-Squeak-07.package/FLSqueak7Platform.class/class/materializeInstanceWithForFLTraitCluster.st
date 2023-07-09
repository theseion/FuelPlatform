private-extensions-fltraitcluster
materializeInstanceWithForFLTraitCluster
	<flExtensionOf: #FLTraitCluster isSource: true>
	^ 'materializeInstanceWith: aDecoder
	| classTrait |
	classTrait := aDecoder nextEncodedReference.
	^ Trait new
		fuelSetClassTrait: classTrait;
		 yourself'