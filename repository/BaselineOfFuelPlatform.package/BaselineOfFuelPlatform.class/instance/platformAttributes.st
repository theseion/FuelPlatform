adding
platformAttributes
	| version |
	version := SystemVersion current version.
	^ (version beginsWith: 'Pharo')
		ifTrue: [ self pharoPlatformAttributes ]
		ifFalse: [ self squeakPlatformAttributes ]