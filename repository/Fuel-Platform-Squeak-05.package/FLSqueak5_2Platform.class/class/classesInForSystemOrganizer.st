private-extensions-systemorganizer
classesInForSystemOrganizer
	<flExtensionOf: #SystemOrganizer isSource: true>
	^ 'classesIn: categoryName

	| classes |
	classes := OrderedCollection new.
	self categories withIndexCollect: [:cat :idx |
		(categoryName match: cat)
			ifTrue: [classes addAll: (self listAtCategoryNumber: idx)]
			ifFalse: [nil]].
	^ classes collect: [:clsName | Smalltalk classNamed: clsName]'