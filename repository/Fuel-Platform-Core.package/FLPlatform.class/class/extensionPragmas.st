private - extensions
extensionPragmas
	| pragmas |
	pragmas := Dictionary new.
	#(
		flExtensionOf:
		flExtensionOf:selector:
		flExtensionOf:selector:isSource:
		flExtensionOf:isSource:) do: [ :selector |
			| stop |
			stop := false.
			self class withAllSuperclassesDo: [ :class |
				stop ifFalse: [
					self current
						withPragmasIn: class
						do: [ :pragma |
							(pragma selector = selector and: [
								"don't collect overridden methods"
								(pragmas includesKey: pragma methodSelector) not ]) ifTrue: [
									pragmas
										at: pragma methodSelector
										put: pragma ] ].
							FLPlatform class = class ifTrue: [ stop := true ] ] ] ].
			
	^ pragmas values