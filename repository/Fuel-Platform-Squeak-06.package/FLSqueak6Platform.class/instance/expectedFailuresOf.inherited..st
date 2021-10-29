tests-testing
expectedFailuresOf: aClass inherited: anArray
	aClass = (Smalltalk at: #FLBasicSerializationTest) ifTrue: [
		^ anArray copy
			addAll: #(
				"Global values are expected to be of type String. We'd need to modify string
				encoding to support String and WideString or treat the value as an arbitrary
				object and let the engine decide how to serialize."
				testWideStringGlobal
				testConsiderCustomWideSymbolGlobal
				testWideStringClassName);
			yourself ].
	aClass = (Smalltalk at: #FLConfigurationTest) ifTrue: [
		^ anArray copyWith: #testFileNameWrong ].
	aClass = #FLFileReferenceStreamBasicSerializationTest ifTrue: [
		"Don't inherit failures from FLBasicSerializationTest because we're
		skipping *all* tests. Expected failures would count towards failures."
		^ #() ].
		
	^ anArray