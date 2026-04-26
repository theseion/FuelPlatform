adding
squeakPlatformAttributes
	| version restOfVersion |
	version := SystemVersion current version.
	restOfVersion := version allButFirst: 'Squeak' size.
	
	(restOfVersion endsWith: 'alpha') ifTrue: [ ^ #('squeak-fallback') ].
	
	(restOfVersion beginsWith: '6.1') ifTrue: [ ^ {'squeak6.1'} ].
	(restOfVersion beginsWith: '6.0') ifTrue: [ ^ {'squeak6.0'} ].
	(restOfVersion beginsWith: '5') ifTrue: [ ^ {'squeak5.x'} ].
	((restOfVersion beginsWith: '4.6') or: [
			"See #fixSystemrestOfVersion"
			[ (Smalltalk imageName includesSubString: '4.6') ]
				on: MessageNotUnderstood
				do: [ false ] ]) ifTrue: [ ^ #('squeak4.x') ].
	(restOfVersion beginsWith: '4.') ifTrue: [ ^ #('squeak4.x') ].	
	
	Warning signal: 'Could not determine image restOfVersion. Using fallback'.
	^ #('squeak-fallback')
