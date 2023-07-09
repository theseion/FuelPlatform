private-extensions-compiledcode
literalsHash
	<flExtensionOf: #CompiledCode>
	| hashBytes |
	"Answer a 16-bit checksum of the literals."

	hashBytes := ByteArray 
		new: self numLiterals
		streamContents: [ :stream |
			self literalsDo: [ :literal |
				| hash |
				hash := literal hash.
				1
					to: hash bytesCount
					do: [ :byteIndex | stream nextPut: (hash byteAt: byteIndex) ] ] ].
	^ hashBytes
		crc16from: 1
		to: hashBytes size