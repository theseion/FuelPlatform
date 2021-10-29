tests-testing
expectedFailuresOf: aClass inherited: aCollection
	(aClass inheritsFrom: (Smalltalk at: #FLBasicSerializationTest)) ifTrue: [
		^ aCollection
			addAll: #(
				"Global values are expected to be of type String. We'd need to modify string
				encoding to support String and WideString or treat the value as an arbitrary
				object and let the engine decide how to serialize."
				testWideStringGlobal
				testConsiderCustomWideSymbolGlobal
				testWideStringClassName);
			yourself ].
	(aClass inheritsFrom: (Smalltalk at: #FLConfigurationTest)) ifTrue: [
		^ aCollection
			add: #testFileNameWrong ;
			yourself ].
	(aClass inheritsFrom: #FLFileReferenceStreamBasicSerializationTest) ifTrue: [
		"Don't inherit failures from FLBasicSerializationTest because we're
		skipping *all* tests. Expected failures would count towards failures."
		^ OrderedCollection new ].
		
	^ aCollection