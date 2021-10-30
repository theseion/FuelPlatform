private-extensions-flenvironmentprotectingwrapper
bindingOfIfAbsentForFLEnvironmentProtectingWrapper
	<flExtensionOf: #FLEnvironmentProtectingWrapper isSource: true>
	^ 'bindingOf: aSymbol ifAbsent: aBlock
	^ overlay
		bindingOf: aSymbol
		ifAbsent: [
			environment
				bindingOf: aSymbol
				ifAbsent: aBlock'