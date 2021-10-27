private-extensions-flcompiledmethodcluster
afterMaterializationStepWithForFLCompiledMethodCluster
	<flExtensionOf: #FLCompiledMethodCluster isSource: true>
	^ 'afterMaterializationStepWith: aDecoder
	objects do: [ :anObject | anObject fuelAfterMaterialization ]'