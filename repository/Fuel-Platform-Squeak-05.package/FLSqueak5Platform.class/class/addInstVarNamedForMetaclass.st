private-extensions-metaclass
addInstVarNamedForMetaclass
	<flExtensionOf: #Metaclass isSoure: true>
	'addInstVarNamed: t1 
	^ FLPlatform current
		silentlyDo: [self addInstVarName: t1]'