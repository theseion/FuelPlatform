private
compileInTarget
	| target source |
	target := self isClassSide
		ifTrue: [ self targetClass classSide ]
		ifFalse: [ self targetClass instanceSide ].
		
	source := self method methodClass instanceSide
		perform: self method selector
		withArguments: (1 to: self method selector numArgs) asArray.
	target compile: source.
	target organization
		classify: self selector
		under: self extensionProtocolName