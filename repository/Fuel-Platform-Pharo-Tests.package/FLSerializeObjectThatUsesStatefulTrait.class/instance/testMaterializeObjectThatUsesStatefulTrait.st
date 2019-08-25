tests
testMaterializeObjectThatUsesStatefulTrait
	| traitWithSlot newClass newObject materialized |
	traitWithSlot := Trait
		named: self classFactory newTraitName
		uses: {}
		slots: { #value }
		package: self classFactory defaultCategory.
		
	newClass := self classFactory newClassUsing: traitWithSlot.
	newObject := newClass new
		instVarNamed: 'value' put: '12345';
		yourself.
	
	self serialize: newObject.
	materialized := self materialized.
	
	self assert: (materialized instVarNamed: 'value') equals: '12345'