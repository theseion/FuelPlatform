private
renameAndCompileInTarget
	| target newMethod |
	target := self isClassSide
		ifTrue: [ self targetClass classSide ]
		ifFalse: [ self targetClass instanceSide ].

	newMethod := FLPlatform current
		renamedMethodCopyOf: self method
		selector: self selector.
	FLPlatform current
		silentlyAddAndClassifySelector: self selector
		inClass: target
		withMethod: newMethod
		inProtocol: self extensionProtocolName