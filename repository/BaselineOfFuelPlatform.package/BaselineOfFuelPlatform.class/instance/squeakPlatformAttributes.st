adding
squeakPlatformAttributes
	| version restOfVersion |
	version := SystemVersion current version.
	restOfVersion := version allButFirst: 'Squeak' size.
	
	(restOfVersion beginsWith: '6') ifTrue: [ ^ #('squeak6.x') ].
	(restOfVersion beginsWith: '5') ifTrue: [ ^ #('squeak5.x') ].
	((restOfVersion beginsWith: '4.6') or: [
			"See #fixSystemrestOfVersion"
			[ (Smalltalk imageName includesSubString: '4.6') ]
				on: MessageNotUnderstood
				do: [ false ] ]) ifTrue: [ ^ #('squeak4.x') ].
	(restOfVersion beginsWith: '4.') ifTrue: [ ^ #('squeak4.x') ].
	
	
	Warning signal: 'Could not determine image restOfVersion. Using fallback'.
	^ #('squeak-fallback')