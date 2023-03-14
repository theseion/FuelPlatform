adding
platformAttributes
	SystemVersion current type = 'Pharo' ifTrue: [ ^ { ('pharo' , SystemVersion current major asString , '.x') asSymbol } ].
	
	(SystemVersion current version beginsWith: 'Squeak6') ifTrue: [ ^ #('squeak6.x') ].
	(SystemVersion current version beginsWith: 'Squeak5') ifTrue: [ ^ #('squeak5.x') ].
	((SystemVersion current version beginsWith: 'Squeak4.6') or: [
			"See #fixSystemVersion"
			[ (Smalltalk imageName includesSubString: '4.6') ]
				on: MessageNotUnderstood
				do: [ false ] ]) ifTrue: [ ^ #('squeak4.x') ].
	(SystemVersion current version beginsWith: 'Squeak4.') ifTrue: [ ^ #('squeak4.x') ].
	
	
	Warning signal: 'Could not determine image version. Using fallback'.
	^ #('fuel-fallback')
