private-extensions-metaclass
addInstVarNamedForMetaclass
	<flExtensionOf: #Metaclass isSoure: true>
	'addInstVarNamed: t1 
	^ FLPlatform current
		doSilently: [self addInstVarName: t1]'