adding
squeakPlatformAttributes
	| version restOfVersion |
	version := SystemVersion current version.
	restOfVersion := version allButFirst: 'Squeak' size.
	
	(restOfVersion endsWith: 'alpha') ifTrue: [ ^ #('squeak-fallback') ].
	
	6
		to: 5
		by: -1
		do: [ :versionNumber |
			(restOfVersion beginsWith: versionNumber asString) ifTrue: [ 
				^ {'squeak', versionNumber, '.x'} ] ].

	((restOfVersion beginsWith: '4.6') or: [
			"See #fixSystemrestOfVersion"
			[ (Smalltalk imageName includesSubString: '4.6') ]
				on: MessageNotUnderstood
				do: [ false ] ]) ifTrue: [ ^ #('squeak4.x') ].
	(restOfVersion beginsWith: '4.') ifTrue: [ ^ #('squeak4.x') ].	
	
	Warning signal: 'Could not determine image restOfVersion. Using fallback'.
	^ #('squeak-fallback')