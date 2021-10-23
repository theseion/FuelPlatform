private-extensions-classvariable
owningClass
	<flExtensionOf: #ClassVariable isSource: true>
	^ 'owningClass
	^ FLCurrentContext value environment allClasses detect: [ :class |
		class hasClassVariable: self ]'