private-extensions-compiledcode
bytecodesHash
	<flExtensionOf: #CompiledCode>
	"Answer a 16-bit checksum of the bytecodes."

	^ self crc16from: self initialPC to: self endPC