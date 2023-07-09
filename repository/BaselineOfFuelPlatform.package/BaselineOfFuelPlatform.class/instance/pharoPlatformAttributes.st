adding
pharoPlatformAttributes
	| version restOfVersion |
	version := SystemVersion current version.
	restOfVersion := version allButFirst: 'Pharo' size.
	
	(restOfVersion beginsWith: 'Pharo11') ifTrue: [ ^ #('pharo11.x') ].
	(restOfVersion beginsWith: 'Pharo10') ifTrue: [ ^ #('pharo10.x') ].
	(restOfVersion beginsWith: 'Pharo9') ifTrue: [ ^ #('pharo9.x') ].
	(restOfVersion beginsWith: 'Pharo8') ifTrue: [ ^ #('pharo8.x') ].
	(restOfVersion beginsWith: 'Pharo7') ifTrue: [ ^ #('pharo7.x') ].
	(restOfVersion beginsWith: 'Pharo6') ifTrue: [ ^ #('pharo6.x') ].
	(restOfVersion beginsWith: 'Pharo5') ifTrue: [ ^ #('pharo5.x') ].
	(restOfVersion beginsWith: 'Pharo4') ifTrue: [ ^ #('pharo4.x') ].
	(restOfVersion beginsWith: 'Pharo3') ifTrue: [ ^ #('pharo3.x') ].
	(restOfVersion beginsWith: 'Pharo2') ifTrue: [ ^ #('pharo2.x') ].
	(restOfVersion beginsWith: 'Pharo6') ifTrue: [ ^ #('pharo6.x') ].
	(restOfVersion beginsWith: 'Pharo1.') ifTrue: [ ^ #('pharo1.x') ].
	(#('Pharo1.1' 'Pharo-1.1') anySatisfy: [ :pharo1Version |
			version beginsWith: pharo1Version ]) ifTrue: [ ^ #('pharo1.x') ].
	
	Warning signal: 'Could not determine image restOfVersion. Using fallback'.
	^ #('pharo-fallback')