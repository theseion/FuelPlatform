tests
testDeserializedExternalAddressIsNull

	| externalAddress byteArray |

	externalAddress := ExternalAddress fromAddress: 1234567890.
	byteArray := self serialize: externalAddress.
	externalAddress := self deserialize: byteArray.
	
	self assert: externalAddress isNull.