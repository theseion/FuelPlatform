tests-testing
expectedFailuresOf: aClass
	| inherited |
	inherited := super expectedFailuresOf: aClass.
	((aClass includesBehavior: (Smalltalk at: #FLBasicSerializationTest)) and: [
		"Don't inherit failures from FLBasicSerializationTest because we're
		skipping *all* tests. Expected failures would count towards failures."
		(aClass includesBehavior: (Smalltalk at: #FLFileReferenceStreamBasicSerializationTest)) not ]) ifTrue: [
			inherited addAll: #(
				"Global values are expected to be of type String. We'd need to modify string
				encoding to support String and WideString or treat the value as an arbitrary
				object and let the engine decide how to serialize."
				testWideStringGlobal
				testConsiderCustomWideSymbolGlobal
				testWideStringClassName) ].
	(aClass includesBehavior: (Smalltalk at: #FLConfigurationTest)) ifTrue: [
		inherited add: #testFilePathWrong ].
	
	(aClass includesBehavior: (Smalltalk at: #FLFullBlockClosureSerializationTest)) ifTrue: [
		"Squeak 5.3 has FullBlockClosure and CompiledBlock but they don't appear to be used,
		at least not with the VM that runs the tests."
		inherited addAll: #(testBlockClosureRemoved testBlockClosureChangeDifferentBytecodes) ].
	
	(aClass includesBehavior: (Smalltalk at: #FLCreateClassSerializationTest)) ifTrue: [
		"Squeak 5.3 does not have stateful traits"
		inherited add: #testCreateClassWithCreatedTraitWithInstanceVariable ].
	
	(aClass includesBehavior: (Smalltalk at: #FLGlobalTraitSerializationTest)) ifTrue: [
		"Squeak 5.3 does not have stateful traits"
		inherited add: #testCreateClassWithCreatedTraitWithInstanceVariable ].
		
	^ inherited