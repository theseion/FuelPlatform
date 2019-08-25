tests
testSerializeObjectThatUsesStatefulTrait
	| traitWithSlot newClass |
	traitWithSlot := Trait
		named: self classFactory newTraitName
		uses: {}
		slots: { #value }
		package: self classFactory defaultCategory.
		
	newClass := self classFactory newClassUsing: traitWithSlot.
	
	self serialize: newClass new