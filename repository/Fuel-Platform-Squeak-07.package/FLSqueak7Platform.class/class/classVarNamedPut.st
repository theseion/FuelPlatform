private-extensions-class
classVarNamedPut
	<flExtensionOf: #Class isSource: true>
	^ 'classVarNamed: aString put: anObject
	self classPool
		at: aString
		put: anObject'