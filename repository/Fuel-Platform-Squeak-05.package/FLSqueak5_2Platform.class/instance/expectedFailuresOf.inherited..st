tests-testing
expectedFailuresOf: aClass inherited: anArray
	aClass = (Smalltalk at: #FLFullBlockClosureSerializationTest) ifTrue: [
		^ anArray copy
			addAll: #(testBlockClosureRemoved testBlockClosureChangeDifferentBytecodes);
			yourself ].
	
	^ super
		expectedFailuresOf: aClass
		inherited: anArray