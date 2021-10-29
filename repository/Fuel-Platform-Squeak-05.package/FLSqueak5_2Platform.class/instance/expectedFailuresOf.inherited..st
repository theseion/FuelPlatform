tests-testing
expectedFailuresOf: aClass inherited: aCollection
	aClass = (Smalltalk at: #FLFullBlockClosureSerializationTest) ifTrue: [
		^ aCollection
			addAll: #(testBlockClosureRemoved testBlockClosureChangeDifferentBytecodes);
			yourself ].
	
	^ aCollection