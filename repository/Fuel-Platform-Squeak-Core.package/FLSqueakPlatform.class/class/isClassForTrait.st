private-extensions-trait
isClassForTrait
	<flExtensionOf: #Trait isSource: true>
	^ 'initialize
	overlay := SystemDictionary new.
	sentinel := Object new.
	"Fix bad migration to Environment"
	overlay add: #Undeclared -> WeakIdentityDictionary new'