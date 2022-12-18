tests-testing
expectedFailuresOf: aClass
	| inherited |
	inherited := super expectedFailuresOf: aClass.
	(aClass includesBehavior: (Smalltalk at: #FLBasicSerializationTest)) ifTrue: [
		inherited addAll: #(
			"Global values are expected to be of type String. We'd need to modify string
			encoding to support String and WideString or treat the value as an arbitrary
			object and let the engine decide how to serialize."
			testWideStringGlobal
			testConsiderCustomWideSymbolGlobal
			testWideStringClassName) ].

	(FLVersion current major <= 5 and: [
		FLVersion current minor <= 1 ]) ifTrue: [
			(aClass includesBehavior: (Smalltalk at: #FLGlobalEnvironmentTest)) ifTrue: [
				inherited addAll: #(
					testCompiledMethodChanged) ].
			(aClass includesBehavior: (Smalltalk at: #FLBlockClosureSerializationTest)) ifTrue: [
				inherited addAll: #(
					testBlockClosureChangeDifferentBytecodes
					testBlockClosureChangeSameBytecodes
					testBlockClosureRemoved) ].
			(aClass includesBehavior: (Smalltalk at: #FLFullBlockClosureSerializationTest)) ifTrue: [
				inherited addAll: #(
					testBlockClosureChangeDifferentBytecodes) ] ].
		
	^ inherited