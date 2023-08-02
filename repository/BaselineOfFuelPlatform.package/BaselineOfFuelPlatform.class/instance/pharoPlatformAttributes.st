adding
pharoPlatformAttributes
	| version restOfVersion |
	version := SystemVersion current version.
	restOfVersion := version allButFirst: 'Pharo' size.
	
	(restOfVersion beginsWith: '11') ifTrue: [ ^ #('pharo11.x') ].
	(restOfVersion beginsWith: '10') ifTrue: [ ^ #('pharo10.x') ].
	(restOfVersion beginsWith: '9') ifTrue: [ ^ #('pharo9.x') ].
	(restOfVersion beginsWith: '8') ifTrue: [ ^ #('pharo8.x') ].
	(restOfVersion beginsWith: '7') ifTrue: [ ^ #('pharo7.x') ].
	(restOfVersion beginsWith: '6') ifTrue: [ ^ #('pharo6.x') ].
	(restOfVersion beginsWith: '5') ifTrue: [ ^ #('pharo5.x') ].
	(restOfVersion beginsWith: '4') ifTrue: [ ^ #('pharo4.x') ].
	(restOfVersion beginsWith: '3') ifTrue: [ ^ #('pharo3.x') ].
	(restOfVersion beginsWith: '2') ifTrue: [ ^ #('pharo2.x') ].
	(restOfVersion beginsWith: '6') ifTrue: [ ^ #('pharo6.x') ].
	(restOfVersion beginsWith: '1.') ifTrue: [ ^ #('pharo1.x') ].
	(#('Pharo1.1' 'Pharo-1.1') anySatisfy: [ :pharo1Version |
			version beginsWith: pharo1Version ]) ifTrue: [ ^ #('pharo1.x') ].
	
	Warning signal: 'Could not determine image restOfVersion. Using fallback'.
	^ #('pharo-fallback')