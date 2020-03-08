private-extensions-flserializationtest
setUpForFLSerializationTest
	<flExtensionOf: #FLSerializationTest selector: #setUp>
	super setUp.
	self setUpClassFactory.
	self setUpSerializer.
	self setUpMaterializer.
	"You have several stream strategies available on 'stream-strategies' category."
	self useBinaryFileStream