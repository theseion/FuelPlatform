tests
testDeserializedExternalAddressIsNull
	| externalAddress loadedExternalAddress |
	externalAddress := ExternalAddress fromAddress: 1234567890.
	self serialize: externalAddress.
	loadedExternalAddress := self materialized.
	
	self assert: loadedExternalAddress isNull