private-hacks
addAbstractEnvironmentTestCase
	Smalltalk
		at: #AbstractEnvironmentTestCase
		ifPresent: [ :x | ^ self ].
	
	TestCase subclass: #AbstractEnvironmentTestCase
		instanceVariableNames: 'testingEnvironment'
		classVariableNames: ''
		poolDictionaries: ''
		category: self hacksCategoryName.
		
	(Smalltalk at: #AbstractEnvironmentTestCase)
		compile: 'setUp
	super setUp.
	testingEnvironment := Smalltalk globals.';
		compile: 'environmentOfTest ^ Smalltalk globals'