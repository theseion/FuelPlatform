tests
testSerializeExternalAddressCorrectly
	| externalAddress byteArray |
	externalAddress := ExternalAddress fromAddress: 1234567890.
	byteArray := self resultOfSerializeAndMaterialize: externalAddress.
	
	self assert: byteArray isNotNil.
	self assert: byteArray notEmpty
	