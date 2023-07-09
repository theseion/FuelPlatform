private-extensions-metaclass
addInstVarNamedForMetaclass
	<flExtensionOf: #Metaclass isSource: true>
	^ 'addInstVarNamed: t1 
	^ FLPlatform current
		silentlyDo: [self addInstVarName: t1]'