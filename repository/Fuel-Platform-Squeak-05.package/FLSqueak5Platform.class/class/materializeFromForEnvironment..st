private-extensions-environment
materializeFromForEnvironment: aDecoder
	<flExtensionOf: #Environment isClassSide: true selector: #materializeFrom:>
	"Answer my well-known instance"

	^ (Smalltalk at: #Environment) default