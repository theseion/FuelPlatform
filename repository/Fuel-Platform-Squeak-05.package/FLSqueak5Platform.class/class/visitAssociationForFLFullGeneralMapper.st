private-extensions-flfullgeneralmapper
visitAssociationForFLFullGeneralMapper
	<flExtensionOf: #FLFullGeneralMapper isSource: true>
	^ 'visitAssociation: anAssociation
	"Consider associations globals that can be looked up, unless
	the associated class (if any) should be fully serialized.
	Note that in Squeak the global environment can currently contain
	instances of Association as well as Global."
	((globals includesKey: anAssociation key) or: [
		self environment includesKey: anAssociation key ])
			ifTrue: [
				self
					mapAndTraceByClusterName: anAssociation
					to: FLGlobalAssociationCluster ]
			ifFalse: [ next mapAndTrace: anAssociation ]'