accessing - tests
classFactoryForTestCaseClass
	^ Smalltalk
		at: #FLClassFactoryForTestCase
		ifAbsent: [ Smalltalk at: #ClassFactoryForTestCase ]