initialize-release
readTargetClassFrom: aPragma argumentNames: argumentNames argumentValues: argumentValues
	| class |
	class := Smalltalk
		at: (argumentValues at: (argumentNames indexOf: 'flExtensionOf:'))
		ifAbsent: [ ^ nil ].
		
	^ self isClassSide
		ifTrue: [ class classSide ]
		ifFalse: [ class instanceSide ]