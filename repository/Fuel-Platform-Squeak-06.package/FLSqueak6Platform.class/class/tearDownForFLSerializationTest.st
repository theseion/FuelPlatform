private-extensions-flserializationtest
tearDownForFLSerializationTest
	<flExtensionOf: #FLSerializationTest selector: #tearDown>
	self
		tearDownClassFactory;
		tearDownInstanceVariables.
	
	super tearDown.
	
	"This works around improper cleanup / checking of undeclared references.
	When tests are run in batches and GC doesn't occur at the right moment a
	dialog may pop up to inform about the target class of a renaming operation
	being in undeclared (see Class>>rename:)."
	Smalltalk garbageCollect