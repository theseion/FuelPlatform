private
copyToTarget
	| target |
	target := self isClassSide
		ifTrue: [ self targetClass classSide ]
		ifFalse: [ self targetClass instanceSide ].
	
	FLPlatform current
		addAndClassifySelector: self selector
		inClass: target
		withMethod: self method copy
		inProtocol: self extensionProtocolName