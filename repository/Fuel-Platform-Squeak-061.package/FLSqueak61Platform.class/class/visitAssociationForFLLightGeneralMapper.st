private-extensions-fllightgeneralmapper
visitAssociationForFLLightGeneralMapper
	<flExtensionOf: #FLLightGeneralMapper isSource: true>
	^ 'visitAssociation: anAssociation
	"In Squeak only associations in the global environment can be treated specially.
	Class variables, for example, are also associations, but without context we don''t
	know which class they belong to. Hence, the must always be fully serialized."
	self visitFixedObject: anAssociation'