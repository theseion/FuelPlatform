private-extensions-flenvironmentprotectingwrapper
bindingOfIfAbsentForFLEnvironmentProtectingWrapper
	<flExtensionOf: #FLEnvironmentProtectingWrapper isSource: true>
	^ 'bindingOf: aSymbol ifAbsent: aBlock
	^ self
		at: aSymbol
		ifAbsent: aBlock'