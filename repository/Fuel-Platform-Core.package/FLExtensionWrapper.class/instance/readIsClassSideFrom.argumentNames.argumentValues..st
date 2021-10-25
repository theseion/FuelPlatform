initialize-release
readIsClassSideFrom: aPragma argumentNames: argumentNames argumentValues: argumentValues
	| index |
	index := argumentNames
		indexOf: 'isClassSide:'
		ifAbsent: [ ^ false ].
	
	^ argumentValues at: index