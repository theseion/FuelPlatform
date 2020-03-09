private-hacks
addAbstractEnvironmentTestCase
	Smalltalk at: #AbstractEnvironmentTestCase
		ifPresent: [ ^ self ].
	
	TestCase subclass: #AbstractEnvironmentTestCase
		instanceVariableNames: 'testingEnvironment'
		classVariableNames: ''
		package: self hacksCategoryName.
		
	(Smalltalk at: #AbstractEnvironmentTestCase) compile: 'initialize
	super initialize.
	testingEnvironment := Smalltalk globals.'