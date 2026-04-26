private-extensions-flfullbasicserializationtest
testClassVariableForFLFullBasicSerializationTest
	<flExtensionOf: #FLFullBasicSerializationTest isSource: true>
	^ 'testClassVariable
	"In Squeak only assocations from the global environment can be looked up
	upon materialization because we don''t have the context for others (e.g.
	class variables)."
	
	self assertSerializationEqualityOf: (self class classPool associationAt: #ClassVariableForTesting)'