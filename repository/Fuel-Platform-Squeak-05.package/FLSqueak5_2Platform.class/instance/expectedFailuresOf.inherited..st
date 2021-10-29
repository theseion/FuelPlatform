tests-testing
expectedFailuresOf: aClass inherited: aCollection
	(aClass includesBehavior: (Smalltalk at: #FLFullBlockClosureSerializationTest)) ifTrue: [
		^ aCollection
			addAll: #(testBlockClosureRemoved testBlockClosureChangeDifferentBytecodes);
			yourself ].
	
	^ aCollection