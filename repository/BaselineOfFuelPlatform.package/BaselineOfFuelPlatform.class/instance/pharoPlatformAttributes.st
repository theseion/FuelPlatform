adding
pharoPlatformAttributes
	| version restOfVersion |
	version := SystemVersion current version.
	restOfVersion := version allButFirst: 'Pharo' size.
	
	11
		to: 7
		by: -1
		do: [ :versionNumber |
			(restOfVersion beginsWith: versionNumber asString) ifTrue: [
				^ {'pharo', versionNumber asString, '.x'} ] ].
	
	Warning signal: 'Could not determine image restOfVersion. Using fallback'.
	^ #('pharo-fallback')