tests-testing
expectedFailuresOf: aClass inherited: aCollection
	(aClass inheritsFrom: (Smalltalk at: #FLFullBlockClosureSerializationTest)) ifTrue: [
		^ aCollection
			addAll: #(testBlockClosureRemoved testBlockClosureChangeDifferentBytecodes);
			yourself ].
	
	^ aCollection