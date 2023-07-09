private-extensions-class
addClassVarNamedForClass
	<flExtensionOf: #Class isSource: true>
	^ 'addClassVarNamed: t1 
	^ FLPlatform current
		silentlyDo: [self addClassVarName: t1]'
