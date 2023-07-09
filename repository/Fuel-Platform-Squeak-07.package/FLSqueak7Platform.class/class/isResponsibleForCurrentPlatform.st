testing
isResponsibleForCurrentPlatform
	^ super isResponsibleForCurrentPlatform and: [
		(SystemVersion current version endsWith: 'alpha') ]