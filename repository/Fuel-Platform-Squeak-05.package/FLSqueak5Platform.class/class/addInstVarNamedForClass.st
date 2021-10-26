private-extensions-class
addInstVarNamedForClass
	<flExtensionOf: #Class isSource: true>
	^ 'addInstVarNamed: t1 
	^ FLPlatform current
		silentlyDo: [self addInstVarName: t1]'
