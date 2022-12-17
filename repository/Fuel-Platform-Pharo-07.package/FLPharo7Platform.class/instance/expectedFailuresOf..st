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
	(aClass includesBehavior: (Smalltalk at: #FLFullBlockClosureSerializationTest)) ifTrue: [
		inherited addAll: #(testBlockClosureRemoved testBlockClosureChangeDifferentBytecodes) ].
	
	(aClass includesBehavior: (Smalltalk at: #FLCreateClassSerializationTest)) ifTrue: [
		"Pharo 7 does not have stateful traits"
		inherited add: #testCreateClassWithCreatedTraitWithInstanceVariable ].
	
	(aClass includesBehavior: (Smalltalk at: #FLGlobalTraitSerializationTest)) ifTrue: [
		"Pharo 7 does not have stateful traits"
		inherited add: #testCreateClassWithCreatedTraitWithInstanceVariable ].
	
	aClass = (Smalltalk at: #FLFullBlockClosureSerializationTest) ifTrue: [
		inherited addAll: #(
			"New closure optimizations"
			#testBlockClosureChangeDifferentBytecodesConstant
			#testBlockClosureChangeSameBytecodesConstant
			#testBlockClosureRemovedConstant) ].
	aClass = (Smalltalk at: #FLBlockClosureSerializationTest) ifTrue: [
		inherited addAll: #(
			"New closure optimizations"
			#testBlockClosureChangeDifferentBytecodesConstant
			#testBlockClosureChangeSameBytecodesConstant
			#testBlockClosureRemovedConstant) ].
	aClass = (Smalltalk at: #FLGlobalEnvironmentTest) ifTrue: [
		inherited addAll: #(
			"New closure optimizations"
			#testCompiledMethodNotChangedConstant) ].
		
	^ inherited