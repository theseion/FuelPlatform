private-extensions-flcurrentcontext
valueDuringForFLCurrentContext
	<flExtensionOf: #FLCurrentContext isClass: true isSource: true>
	^ 'value: aContext during: aBlock
	^ [ super
		value: aContext
		during: aBlock ] ensure: [
			aContext finalizeOperations ]'