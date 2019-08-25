tests
testSerializeExternalAddressCorrectly

	| externalAddress byteArray |

	externalAddress := ExternalAddress fromAddress: 1234567890.
	byteArray := self serialize: externalAddress.
	
	self assert: byteArray isNotNil.
	self assert: byteArray size > 0
	