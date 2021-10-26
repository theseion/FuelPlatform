private-extensions-class
addInstVarNamedForClass
	<flExtensionOf: #Class isSource: true>
	^ 'addInstVarNamed: t1 
	^ FLPlatform current
		doSilently: [self addInstVarName: t1]'
