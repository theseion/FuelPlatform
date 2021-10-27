private-extensions-compiledmethod
fuelAfterMaterializationForCompiledMethod
	<flExtensionOf: #CompiledMethod isSource: true>
	^ 'fuelAfterMaterialization
	"In Squeak class variables lack context. So when a compiled method with a class variable
	is serialized the literal holding the class variable binding simply holds an association.
	From the association we can''t know that the class variable can be looked up upon materialization
	so we have to always serialize it. However, once materialized we can simply recompile the method
	and the binding will be updated. The value of the class variable will still be serialized and
	materialized but we simply throw it away after materialization."
	
	self isInstalled ifFalse: [ ^ self ].
	
	self recompile: selector from: self'