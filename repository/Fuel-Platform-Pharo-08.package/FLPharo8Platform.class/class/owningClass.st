private-extensions-classvariable
owningClass
	<flExtensionOf: #ClassVariable isSource: true>
	^ 'owningClass
	^ FLCurrentConfiguration value environment allClasses detect: [ :class |
		class hasClassVariable: self ]'