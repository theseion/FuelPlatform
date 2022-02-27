private-extensions-behavior
fuelRecomputeSlotScopeWithTraitsForBehavior
	<flExtensionOf: #Behavior isSource: true>
	^ 'fuelRecomputeSlotScopeWithTraitsForBehavior
	"We only know about trait variables once the trait composition
	has been fully materialized. Now we need to update the slot scope
	with the information from traits and recompute the class
	format since it may currently define too many fields.
	If that is indeed the case, then existing instances will have been
	allocated with more fields than necessary, however, their layout
	definition defines fewer slots, so all operations on instance
	variables are safe.
	New instances will be created with the correct amount of fields
	allocated.
	
	Note that the format computed here only differs from the initially
	set format if variables were removed from the class.
	
	See FLBehaviorCluster>>installLayout:withFormat:variableNames:into:
	and FLVariablesMapping>>materializeTraitVariablesWith:."
	| classSlots traitSlots newSlotScope |
	"Stateful traits only"
	(((self traitComposition respondsTo: #slots) not) or: [
		"For some unkown reason the contents of the baseComposition
		instance variable of the traited metaclass is only updated
		to the materialized value when garbage collection runs.
		This bug appears to only affect Pharo 8."
		(self traitComposition isEmpty and: [
			self class baseComposition isEmpty not ]) ifTrue: [ 
				Smalltalk garbageCollect ].
		self traitComposition slots allSatisfy: [ :slot |
			self hasSlotNamed: slot name ] ]) ifTrue: [ ^ self ].
	
	classSlots := self classLayout slots.
	traitSlots := self traitComposition slots select: [ :traitSlot |
		classSlots noneSatisfy: [ :slot |
			slot name = traitSlot name ] ].
	
	newSlotScope := self classLayout slotScope parentScope extend: classSlots, traitSlots.
	self classLayout slotScope: newSlotScope.
	self setFormat: self classLayout format'