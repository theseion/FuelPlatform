private-extensions-flserializationtest
newSubclassNamed: nameString of: aClass  instanceVariableNames: ivNamesString classVariableNames: classVarsString
	<flExtensionOf: #FLSerializationTest>
	| class |
	SystemAnnouncer uniqueInstance suspendAllWhile: [
		class := self class classInstaller make: [ :aBuilder | 
			aBuilder 
				name: nameString;
				superclass: aClass;
				slots: ivNamesString asSlotCollection;
				sharedVariablesFromString: classVarsString;
				category: self classFactory defaultCategory ] ].
	self classFactory createdClasses add: class.
	^ class