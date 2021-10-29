tests-testing
expectedFailuresOf: aClass
	| inherited |
	inherited := super expectedFailuresOf: aClass.
	(aClass includesBehavior: (Smalltalk at: #FLFullBlockClosureSerializationTest)) ifTrue: [ 
		inherited addAll: #(testBlockClosureRemoved testBlockClosureChangeDifferentBytecodes) ].

	^ inherited